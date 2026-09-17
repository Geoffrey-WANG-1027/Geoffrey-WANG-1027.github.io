/* 
--------------------------------------------  
-------- MECH1010 Coursework 2024 --------
-------- Name:  Yecheng WANG 201803790
-------- Username:  mn232yw
--------------------------------------------
*/

// Pin Definitions 引脚
const int potPin = A0;          // Potentiometer input pin
const int greenLedPin = 2;      // Green LED output pin
const int yellowLedPin = 3;     // Yellow LED output pin
const int redLedPin = 4;        // Red LED output pin
const int motorEnablePin = 10;  // H-Bridge ENABLE pin (PWM speed control)
const int motorDirectionPin = 9;// H-Bridge DIRECTION pin

// Constants 定量
const float rodLength = 0.491;           // 杆子的长度Length of the drone arm in meters
const float targetHeight = 0.0;          // 目标高度为0 Target height in meters (horizontal)
const float targetTolerance = 0.02;      // Tolerance in +/- 0.02 m which lights Green LED and continue time counting  
const long controlInterval = 40;         // 25Hz的频率，操作间隔40ms Control loop interval in milliseconds (1000ms / 25Hz)
const long stableFlightDuration = 5000;  // 稳定高度5s = 5000ms Flight control duration in milliseconds (5 seconds)

// Calibration Values 校准值 用于回归
const int adcMin = 212;                  // ADC value at -68.5 degrees
const int adcMax = 410;                  // ADC value at 0 degrees (horizontal)
const float angleMin = -68.5;            // 地面时的角度为-68.5 Angle in degrees at ADC min -> lowest
const float angleMax = 0.0;              // 目标高度的角度为0    Angle in degrees at ADC max -> target

// PID Controller Parameters
float Kp = 73.0;                         // BeforeTarget 比例P的参数-比例增益--Proportional gain
// float dynamicKp = Kp;                 // dynamicKp varies with the current Error
float Ki = 5.0;                          // 积分增益 Integral
float Kd = 38.0;                         // 微分增益 Derivative
int base_pwm = 144;                      // 基准转速 PWM调速 Estimated PWM for drone

// Global Variables 全局变量
unsigned long loopStartTime = 0;         // loop循环控制开始时间 To store the start time of each loop iteration
unsigned long controlStartTime = 0;      // 控制开始时间 To store the start time of the controller for telemetry
unsigned long targetReachedTime = 0;     // 记录达到目标高度的时间 record time to reach target
bool controlActive = false;              // 标志是否在控制 Flag to indicate if flight control is running
bool targetHeightReached = false;        // 标志是否达到目标高度 note if target ?
float maxError = 0;                      // 达到目标高度后的最大误差 max error after target
float totalError = 0;                    // 达到目标高度后的总误差 total error after target
float avgError = 0;                      // 达到目标高度后的平均误差 avg error after target
int num = 0;                             // 达到目标高度后的误差累积次数 times of sitimulation after target

// Function Prototypes 自定义函数原型
float readAngleSensor();                       // 从连接到模拟输入引脚 (A0) 的电位计读取原始值，将原始 ADC 值转换为角度，并将该角度作为float2返回。
float calculateHeight(float angleDegrees);     // 将计算出的角度作为输入，使用三角函数（sin）和已知的 rodLength 常量计算无人机电机端相对于支点的垂直高度，并以float2返回该高度。
int calculateMotorOutput(float currentError);  // 将电流高度误差（targetHeight和currentHeight差值）作为输入，应用PID，计算适当的PWM以发送到电机进行速度控制，将其限制在有效的0-255范围内，并将此PWM值作为int返回。
void updateLedStatus(float currentHeight);     // 以当前高度为输入，将其与targetHeight和允许的公差（+/- 0.02米）进行比较，决定应该打开哪个状态LED（绿色用于目标，黄高红低），并相应地更新LED的数字输出引脚。
void performShutdown();                        // 在5秒飞行控制期后执行所需的顺序：点亮所有LED，向串行监视器打印“关机”消息，命令电机以低速30%运行以控制降落，短暂等待1s，然后完全关闭电机。它不会返回任何值（void）。

void setup() {
    // Initialize Serial Communication 初始化串口通信 以9600通信
    Serial.begin(9600);
    delay(1000);
    Serial.println("System Started");

    // Configure Pin Modes 引脚的输入输出模式
    pinMode(potPin, INPUT);
    pinMode(greenLedPin, OUTPUT);
    pinMode(yellowLedPin, OUTPUT);
    pinMode(redLedPin, OUTPUT);
    pinMode(motorEnablePin, OUTPUT);
    pinMode(motorDirectionPin, OUTPUT);

    // Set initial LED state (all off) 灯初始化，全部关闭
    digitalWrite(greenLedPin, LOW);
    digitalWrite(yellowLedPin, LOW);
    digitalWrite(redLedPin, LOW);

    // Set motor direction 设置电机方向 已知LOW为升力
    digitalWrite(motorDirectionPin, LOW);
    // Ensure motor is off initially 初始化电机为关闭状态
    analogWrite(motorEnablePin, 0);
  
    // initialized 系统初始化完毕
    Serial.println("System Initiated");

    // Green light for 0.5s 亮0.5s绿灯以表示系统准备完毕
    digitalWrite(greenLedPin, HIGH);
    delay(500); // Keep GREEN LED on for 0.5 seconds
    digitalWrite(greenLedPin, LOW);

    // Prepare for flight control
    Serial.println("Controller Starting");
    Serial.println("Time,Angle,Height,Error");  // Print CSV header 输出日志表头设定
    controlStartTime = millis();                // Record start time of ontrol 设定开始控制时间
    controlActive = true;                       // note control started 标记开始控制
    loopStartTime = millis();                   // Initialize loop timer记录循环开始时间
}



void loop() {
    // Get the current time 当前loop的开始时间
    unsigned long currentTime = millis();

    // PID Flight Control
    if (controlActive) {  //控制中
            // Check 25Hz--40ms
        if (currentTime - loopStartTime >= controlInterval) {
            loopStartTime = currentTime; // 重设loop循环开始时间 Reset loop timer

            // 1. Get the ADC and calculate to Angel 调用 读取ADC值 并 转化为角度的函数
            float currentAngle = readAngleSensor();

            // 2. Calculate Height 调用 高度计算
            float currentHeight = calculateHeight(currentAngle);

            // 3. Error calculation 偏差计算
            float currentError = targetHeight - currentHeight; // Error = 0 - height

            // 4. Motor output Calculation & Set 调用 电机输出 并 输出
            int motorPwm = calculateMotorOutput(currentError);  // 进入target后
            analogWrite(motorEnablePin, motorPwm); // 要求电机输出指定PWM值

            // 5. Lights lamps setting 调用 灯光设置
            updateLedStatus(currentHeight); // Pass height for clarity with spec

            // 6. Output log
            float timeSeconds = (currentTime - controlStartTime) / 1000.0; // ms -> s
            
            Serial.print(timeSeconds, 2);
            Serial.print(",");
            Serial.print(currentAngle, 2);
            Serial.print(",");
            Serial.print(currentHeight, 2);
            Serial.print(",");
            Serial.println(currentError, 2);

            // 7. Check if target height tolerance is met for the first time
            // 未达到过目标高度 且 在目标高度范围内
            if (!targetHeightReached && abs(currentHeight) < targetTolerance) {
                targetHeightReached = true;      // 标记达到目标高度 Set flag indicating target is reached
                targetReachedTime = currentTime; // 记录初次到达目标高度时间 Record the time when target was reached
                // 输出一条log 表明达到目标高度 开始计时5s Optional: Print a message indicating the stable timer has started
                Serial.println("Target height reached. Starting 5s stable timer.");
            }

            // 8.如果离开了目标高度范围 指示的flag返回false -> 条件：已经到达+未超时+超容忍度
            if (targetHeightReached && (currentTime - targetReachedTime < stableFlightDuration) && abs(currentHeight) > targetTolerance) {
              targetHeightReached = false;
              Serial.println("The drone left the Target Height Area!");
              maxError = 0;
              avgError = 0;
              totalError = 0;
              num = 0;
            }

            // 9. find max error and sitimulate errors 判断最大误差 和 累积误差
            if (targetHeightReached && (currentTime - targetReachedTime < stableFlightDuration)){
              // Update Max Error 
              if (abs(currentError) > maxError){
                maxError = currentError;
              }

              // Sitimulate totalError and number of errors
              totalError += currentError;
              num += 1;
              avgError = totalError / num;
            }

            // 10. check if target ? and maintain 5s ? 检查是否已经达到目标高度 且 维持了5s
            if (targetHeightReached && (currentTime - targetReachedTime >= stableFlightDuration)) {
                controlActive = false; // Stop flight control
                performShutdown();    // 调用 关机程序
                
            }
        }
    }

    // Post-Flight Phase 飞行后的阶段
    else {
        while(true) { 
            delay(1000); 
        } 
    }
}

// 函数功能定义 Function Implementations

// 读取ADC值 并 转化为角度 线性回归 角度范围[-68.5,0]
// read adc -> to angel -> linear regression to [-68.5,0]
// 主程序 main loop：float currentAngle = readAngleSensor();
float readAngleSensor() {
  int adcValue = analogRead(potPin); //read analog ADC

  // Use floating point map function for better precision
  // known ADC(212) = Angle(-68.5) & ADC(410) = Angle(0)
  // linear regression ? adcMin = 212; adcMax = 410; angleMin = -68.5; angleMax = 0.0;
  float angle = (float)(adcValue - adcMin) * (angleMax - angleMin) / (float)(adcMax - adcMin) + angleMin;

  // no need to constrain, +/- matters
  return angle;
}

// 计算高度 用sin()
// height calculation with sin()
// 主程序 main loop：float currentHeight = calculateHeight(currentAngle);
float calculateHeight(float angleDegrees) {
  // Convert angle to radians for trigonometric functions
  float angleRadians = angleDegrees * PI / 180.0;  //用弧度做运算 负数angle 负数rad; trigonometric calculate with rad
  return rodLength * sin(angleRadians);            //负的rad的sin也是负数 rodLength = 0.491;
}

// 运用高度偏差 使用PID 计算电机PWM合适的输出
// 主程序：float currentError = targetHeight - currentHeight; // Error = 0 - height
// 当高度低于0，即还是负数时，erorr为正数 -> height<0, error>0
int calculateMotorOutput(float currentError) {
  // 静态变量保存积分项和前一时刻误差
  static float integral = 0.0;
  static float previousError = 0.0;

  // 设定采样周期 dt（单位为秒），假设控制周期为40ms
  const float dt = controlInterval / 1000.0;

  // dynamicKp
  float currentKp = Kp; // Start with base Kp

  // update integral 积分项更新
  integral += currentError * dt;

  // anti-winduo 积分抗饱和处理
  const float maxIntegral = 100.0; // 感觉其实用不到
  integral = constrain(integral, -maxIntegral, maxIntegral);
  // 积分抗饱和结束

  // calculation of derivative (only dt>0) 微分项计算 (仅当 dt > 0 时计算，防止除以零)
  float derivative = 0.0;
  if (dt > 0) {
      derivative = (currentError - previousError) / dt;
  }
  previousError = currentError;  // save for next round 保存当前误差用于下次微分计算

  // calculate output 计算PID控制输出 (使用 currentKp)
  float controlSignal = base_pwm + currentKp * currentError + Ki * integral + Kd * derivative;

  // limit output in the range of PWM 0-255 限制PWM输出在允许的范围内（0~255）
  int motorPwm = constrain((int)controlSignal, 0, 255);
  return motorPwm;
}

// lights setting灯光设定 绿灯合适 黄高 红低
void updateLedStatus(float currentHeight) {
  // Turn all LEDs off initially 初始化全灭
  digitalWrite(greenLedPin, LOW);
  digitalWrite(yellowLedPin, LOW);
  digitalWrite(redLedPin, LOW);

  // height differences check 检测高度差 并设置颜色
  if (abs(currentHeight) <= targetTolerance) {  // acceptable & tolerance -> green 可接受的误差以内 合适 绿灯 
    digitalWrite(greenLedPin, HIGH); 
  } else if (currentHeight > targetTolerance) { // 过高 黄灯 high->yellow
    digitalWrite(yellowLedPin, HIGH);
  } else { // currentHeight < -targetTolerance  // 过低 红灯 low -> red
    digitalWrite(redLedPin, HIGH);
  }
}

// Shut Down Program 关机程序
void performShutdown() {
  Serial.println("Shutdown");

  float timeToTargetSec = 0.0;
  if (targetReachedTime > controlStartTime) {                           // Basic check if target was reached
    timeToTargetSec = (targetReachedTime - controlStartTime) / 1000.0;
  }
  Serial.print("Time to reach target zone (s): ");
  Serial.println(timeToTargetSec, 2);                                   // Print time to reach target in seconds - 打印到达目标区域用时(秒)

  Serial.print("Time to TARGET:");
  Serial.println(targetReachedTime, 2);
  Serial.print("Maximum Error :");
  Serial.println(maxError, 2);
  Serial.print("Average Error :");
  Serial.println(avgError, 2);

  // 1. Light all LEDs 点亮所所有的灯
  digitalWrite(greenLedPin, HIGH);
  digitalWrite(yellowLedPin, HIGH);
  digitalWrite(redLedPin, HIGH);

  // 2. Land (Set motor to 30% speed) 电机速度30%降落
  // 30% * 256 = 76.8 ～= 77
  analogWrite(motorEnablePin, 77);

  // 3. Wait 1 second 短暂等待1秒 即慢速下降1s
  delay(1000);

  // 4. Turn off motor 电机关机
  analogWrite(motorEnablePin, 0);

  // 5. Turn off LEDs (optional, could leave them on) 
  digitalWrite(greenLedPin, LOW);
  digitalWrite(yellowLedPin, LOW);
  digitalWrite(redLedPin, LOW);

  while(true) { 
    delay(1000); 
    }
}