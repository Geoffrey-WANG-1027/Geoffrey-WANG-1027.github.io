#include <Servo.h>
#include <Encoder.h> // 必须在IDE库管理中安装 "Encoder" by Paul Stoffregen

/*
  MECH2636 Buggy - Fixed & Optimized
  ------------------------------------------------
  Hardware:
  - Arduino Mega + Motor Shield R3
  - Motors: Left Dir=12 Brake=9 PWM=3 | Right Dir=13 Brake=8 PWM=11
  - Rear encoders: Left 18/19, Right 20/21
  - Actuator (servo pulse) pin 6
*/

// ---------------- Pinout ----------------
const int LEFT_PWM   = 3;
const int LEFT_DIR   = 12;
const int LEFT_BRAKE = 9;

const int RIGHT_PWM   = 11;
const int RIGHT_DIR   = 13;
const int RIGHT_BRAKE = 8;

// Encoder pins are handled by the library, but we define them for the object
const int ENC_L_A = 18;
const int ENC_L_B = 19;
const int ENC_R_A = 20;
const int ENC_R_B = 21;

const int BLACK_BTN = A9;
const int GREEN_BTN = A10;

const int ACTUATOR_PIN = 6;

// Button threshold
const int BTN_THRESH = 100;

// ---------------- Geometry & Encoder ----------------
const float WHEEL_DIAMETER_M = 0.176f;
const float WHEEL_CIRC_M = 3.1415926f * WHEEL_DIAMETER_M;
const float COUNTS_PER_REV = 512.0f;   
const float DIST_PER_COUNT = WHEEL_CIRC_M / COUNTS_PER_REV;

// ---------------- Mission Distances ----------------
const float DROP_DIST_M   = 6.6f;
const float FINISH_DIST_M = 12.0f;

// ---------------- Actuator ----------------
Servo actuator;
const int ACT_EXTEND_US = 2000;
const int ACT_RETRACT_US = 1000;
// 缩回时间（改为初始伸出，到达后缩回）
const unsigned long ACT_RETRACT_MS = 3200;   // 3500 -> 3200 -> 50

// ---------------- Control Parameters ----------------
// const int OPEN_LOOP_POWER = 98; // %power for black button
const int OPEN_LOOP_POWER_L = 65;  // first stage -- left power setting 55->68->75->70->69
const int OPEN_LOOP_POWER_R = 99;  // first stage -- Right power setting

const int OPEN_LOOP_POWER_L_2 = 80;  // stage 2
const int OPEN_LOOP_POWER_R_2 = 99;  // stage 2

// PI Velocity Loop
const unsigned long CONTROL_DT_MS = 20; 
const float CONTROL_DT_S = CONTROL_DT_MS / 1000.0f;

// Target velocities
const float V_RUN_TO_DROP   = 2.0f;  // target speed 01 (m/s)
const float V_RUN_TO_FINISH = 2.0f;  // target speed 02 (m/s)
const float V_STOP          = 0.0f;

// Soft start
const float V_RAMP_RATE = 2.5f;      // m/s^2

// PI gains
float Kp = 60.0f; 
float Ki = 160.0f;

// ---------------- State Machine ----------------
enum State {
  IDLE = 0,
  RUN_TO_DROP,
  DROPPING,
  RUN_TO_FINISH,
  FINISHED
};
State state = IDLE;

// Drop sub-stage
enum DropStage { DROP_STOP = 0, DROP_EXTEND, DROP_RETRACT, DROP_DONE };
DropStage dropStage = DROP_STOP;
unsigned long dropT0 = 0;

// Mode Selection
enum Mode {
  MODE_NONE = 0,
  MODE_SIMPLE_OPENLOOP,
  MODE_ADV_PI
};
Mode mode = MODE_NONE;

// ---------------- Encoders (Library Object) ----------------
// 使用 Encoder 库接管中断，精度更高
Encoder Enc_1(ENC_L_A, ENC_L_B);
Encoder Enc_2(ENC_R_A, ENC_R_B);

// Variables
long encCountL = 0;
long encCountR = 0;

// Run references
long startCountL = 0;
long startCountR = 0;

// For velocity calc
long prevCountL = 0;
long prevCountR = 0;
unsigned long lastControlT = 0;

// PI internal states
float integL = 0.0f;
float integR = 0.0f;
float vTargetRef = 0.0f;
float vTargetCmd = 0.0f;

// ---------------- Helpers ----------------
bool blackPressed() { return analogRead(BLACK_BTN) < BTN_THRESH; }
bool greenPressed() { return analogRead(GREEN_BTN) < BTN_THRESH; }

void readEncoderCounts(long &l, long &r) {
  // Encoder库自动处理中断，直接读取即可
  encCountL = Enc_1.read();
  encCountR = Enc_2.read();
  l = encCountL;
  r = encCountR;
}

// Reset run references + controller
void resetRun() {
  // 关键修复：在这里重置编码器，而不是在 loop 里
  Enc_1.write(0);
  Enc_2.write(0);
  
  startCountL = 0;
  startCountR = 0;
  prevCountL = 0;
  prevCountR = 0;

  integL = 0.0f;
  integR = 0.0f;

  vTargetRef = 0.0f;
  vTargetCmd = 0.0f;

  lastControlT = millis();
}

float getDistanceMeters() {
  long l, r;
  readEncoderCounts(l, r);
  // 直接读取绝对值距离，因为 resetRun 已经清零了
  float avgCounts = 0.5f * (float)(abs(l) + abs(r)); 
  return avgCounts * DIST_PER_COUNT;
}

void setMotorPower(int left, int right) {
  left  = constrain(left,  -100, 100);
  right = constrain(right, -100, 100);

  // LEFT
  if (left == 0) {
    digitalWrite(LEFT_BRAKE, HIGH);
    analogWrite(LEFT_PWM, 0);
  } else {
    digitalWrite(LEFT_BRAKE, LOW);
    digitalWrite(LEFT_DIR, (left > 0) ? HIGH : LOW);
    int pwm = (int)round(abs(left) * 2.55);
    pwm = constrain(pwm, 0, 255);
    analogWrite(LEFT_PWM, pwm);
  }

  // RIGHT
  if (right == 0) {
    digitalWrite(RIGHT_BRAKE, HIGH);
    analogWrite(RIGHT_PWM, 0);
  } else {
    digitalWrite(RIGHT_BRAKE, LOW);
    digitalWrite(RIGHT_DIR, (right > 0) ? HIGH : LOW);
    int pwm = (int)round(abs(right) * 2.55);
    pwm = constrain(pwm, 0, 255);
    analogWrite(RIGHT_PWM, pwm);
  }
}

void stopMotorsHard() {
  digitalWrite(LEFT_BRAKE, HIGH);
  digitalWrite(RIGHT_BRAKE, HIGH);
  analogWrite(LEFT_PWM, 0);
  analogWrite(RIGHT_PWM, 0);
}

void computeVelocity(float &vL, float &vR) {
  long cL, cR;
  readEncoderCounts(cL, cR);

  long dL = cL - prevCountL;
  long dR = cR - prevCountR;
  prevCountL = cL;
  prevCountR = cR;

  float distL = (float)abs(dL) * DIST_PER_COUNT;
  float distR = (float)abs(dR) * DIST_PER_COUNT;

  vL = distL / CONTROL_DT_S;
  vR = distR / CONTROL_DT_S;
}

float rampTo(float current, float target) {
  float maxStep = V_RAMP_RATE * CONTROL_DT_S;
  float diff = target - current;
  if (diff >  maxStep) diff =  maxStep;
  if (diff < -maxStep) diff = -maxStep;
  return current + diff;
}

float piStep(float vTarget, float vMeas, float &integ) {
  float e = vTarget - vMeas;
  float integCandidate = integ + e * CONTROL_DT_S;
  float uUnsat = Kp * e + Ki * integCandidate;
  float uSat = constrain(uUnsat, -100.0f, 100.0f);

  bool satHigh = (uSat >= 100.0f - 1e-6f);
  bool satLow  = (uSat <= -100.0f + 1e-6f);

  if (!((satHigh && e > 0) || (satLow && e < 0))) {
    integ = integCandidate;
  }

  float u = Kp * e + Ki * integ;
  return constrain(u, -100.0f, 100.0f);
}

// ----------------------------------------------------

void setup() {
  pinMode(LEFT_DIR, OUTPUT);
  pinMode(LEFT_BRAKE, OUTPUT);
  pinMode(RIGHT_DIR, OUTPUT);
  pinMode(RIGHT_BRAKE, OUTPUT);

  pinMode(BLACK_BTN, INPUT);
  pinMode(GREEN_BTN, INPUT);

  // 初始化线性执行器：默认为伸出 (EXTEND)
  actuator.attach(ACTUATOR_PIN);
  actuator.writeMicroseconds(ACT_EXTEND_US); 
  delay(1000); // 等待伸出到位

  Serial.begin(9600);
  
  // 初始化编码器读数 (修复老师的逻辑)
  Enc_1.write(0);
  Enc_2.write(0);

  stopMotorsHard();
  state = IDLE;
  mode = MODE_NONE;
  lastControlT = millis();
}

void loop() {
  unsigned long now = millis();
  
  // !!! 移除了老师代码中错误的 Enc_1.write(0) !!!
  // 否则车子永远跑不出距离

  // ---------------- FSM ----------------
  switch (state) {
    case IDLE: {
      stopMotorsHard();
      mode = MODE_NONE;

      // 物理按钮控制逻辑
      // Check Black Button (Safe/Test Mode)
      if (blackPressed()) {
        delay(30); // 去抖动
        if (blackPressed()) {
          mode = MODE_SIMPLE_OPENLOOP;
          resetRun();
          state = RUN_TO_DROP;
        }
      } 
      // Check Green Button (Race Mode)
      else if (greenPressed()) {
        delay(30); // 去抖动
        if (greenPressed()) {
          mode = MODE_ADV_PI;
          resetRun();
          state = RUN_TO_DROP;
        }
      }
    } break;

    case RUN_TO_DROP: {
      vTargetRef = (mode == MODE_ADV_PI) ? V_RUN_TO_DROP : 0.0f;
      float d = getDistanceMeters();
      
      if (d >= DROP_DIST_M) {
        stopMotorsHard();
        vTargetRef = 0.0f;
        vTargetCmd = 0.0f;
        dropStage = DROP_STOP;
        dropT0 = now;
        state = DROPPING;
      }
    } break;

    case DROPPING: {
      stopMotorsHard();
      // 优化后的投放逻辑：到达后缩回 (RETRACT)
      if (dropStage == DROP_STOP) {
        actuator.writeMicroseconds(ACT_RETRACT_US); // 缩回
        dropT0 = now;
        dropStage = DROP_EXTEND; // 进入计时
      } else if (dropStage == DROP_EXTEND) {
        if (now - dropT0 >= ACT_RETRACT_MS) {
          dropStage = DROP_DONE;
        }
      } else { 
        // DROP_DONE
        state = RUN_TO_FINISH;
      }
    } break;

    case RUN_TO_FINISH: {
      vTargetRef = (mode == MODE_ADV_PI) ? V_RUN_TO_FINISH : 0.0f;
      float d = getDistanceMeters();
      if (d >= FINISH_DIST_M) {
        stopMotorsHard();
        vTargetRef = 0.0f;
        vTargetCmd = 0.0f;
        state = FINISHED;
      }
    } break;

    case FINISHED: {
      stopMotorsHard();
      vTargetRef = 0.0f;
    } break;
  }

  // ---------------- Control Output ----------------
  
  // 1. Simple Open-Loop Mode
  if (mode == MODE_SIMPLE_OPENLOOP) {
    if (state == RUN_TO_DROP) {
      // stage 1
      setMotorPower(OPEN_LOOP_POWER_L, OPEN_LOOP_POWER_R); 
    }
    if (state == RUN_TO_FINISH){
      // stage 2
      setMotorPower(OPEN_LOOP_POWER_L_2, OPEN_LOOP_POWER_R_2);
    }

  }

  // 2. Advanced PI Mode
  // 这里的变量声明为了打印需要，即使在Simple Mode如果不计算也会显示0
  float vL = 0.0f; 
  float vR = 0.0f;

  if (mode == MODE_ADV_PI) {
    if (now - lastControlT >= CONTROL_DT_MS) {
      lastControlT += CONTROL_DT_MS;
      vTargetCmd = rampTo(vTargetCmd, vTargetRef);
      
      computeVelocity(vL, vR); // 计算速度用于 PID

      if (state == RUN_TO_DROP || state == RUN_TO_FINISH) {
        float uL = piStep(vTargetCmd, vL, integL);
        float uR = piStep(vTargetCmd, vR, integR);
        uL = constrain(uL, 0.0f, 100.0f);
        uR = constrain(uR, 0.0f, 100.0f);
        setMotorPower((int)round(uL), (int)round(uR));
      } else {
        stopMotorsHard();
      }
    }
  }

  // ---------------- GLOBAL DEBUG PRINT ----------------
  // 无论什么模式，每 200ms 打印一次状态
  static unsigned long lastPrint = 0;
  if (now - lastPrint >= 200) {
    lastPrint = now;
    float d = getDistanceMeters(); // 获取当前距离
    
    Serial.print("Mode="); Serial.print((int)mode);
    Serial.print(" State="); Serial.print((int)state);
    Serial.print(" Dist="); Serial.print(d, 3);
    
    // 如果是 Simple Mode，vL/vR/vTcmd 会显示 0 , 因为没在那边计算速度
    // 但 Dist 会更新！
    if (mode == MODE_ADV_PI) {
       Serial.print(" vTcmd="); Serial.print(vTargetCmd, 2);
       Serial.print(" vL="); Serial.print(vL, 2);
       Serial.print(" vR="); Serial.print(vR, 2);
    } else {
       Serial.print(" (Simple Mode)");
    }
    Serial.println();
  }
}