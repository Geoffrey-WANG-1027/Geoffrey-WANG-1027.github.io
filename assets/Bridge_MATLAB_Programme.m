classdef Group4_Programme_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                       matlab.ui.Figure
        ReadMEPanel                    matlab.ui.container.Panel
        Label_4                        matlab.ui.control.Label
        Mode2SimulatetoFindMaximumLoadLabel  matlab.ui.control.Label
        Label_3                        matlab.ui.control.Label
        Mode1CalculateforaSpecificInputLoadLabel  matlab.ui.control.Label
        AnalysisSimulationPanel        matlab.ui.container.Panel
        PositiveNegativeofRXRYSeeonNorthwestCoordinateLabel  matlab.ui.control.Label
        TotalCapabilityEditField       matlab.ui.control.NumericEditField
        TotalCapabilityLabel           matlab.ui.control.Label
        PositiveMembersTensionNegativeMembersCompresionLabel  matlab.ui.control.Label
        AngleEditField                 matlab.ui.control.NumericEditField
        AngelLabel_2                   matlab.ui.control.Label
        BrokenMembersLamp              matlab.ui.control.Lamp
        BrokenMembersLampLabel         matlab.ui.control.Label
        MembersundergoingGreaterthan80TheoreticalBreakingLoadLamp  matlab.ui.control.Lamp
        MembersundergoingGreaterthan80BreakingLoadLabel  matlab.ui.control.Label
        SafeMembersLamp                matlab.ui.control.Lamp
        SafeMembersLampLabel           matlab.ui.control.Label
        W1NTextArea                    matlab.ui.control.TextArea
        W1NTextAreaLabel               matlab.ui.control.Label
        W2NTextArea                    matlab.ui.control.TextArea
        W2NTextAreaLabel               matlab.ui.control.Label
        W3NTextArea                    matlab.ui.control.TextArea
        W3NTextAreaLabel               matlab.ui.control.Label
        W4NTextArea                    matlab.ui.control.TextArea
        W4NTextAreaLabel               matlab.ui.control.Label
        W5NTextArea                    matlab.ui.control.TextArea
        W5NTextAreaLabel               matlab.ui.control.Label
        RY2NTextArea                   matlab.ui.control.TextArea
        RY2NTextAreaLabel              matlab.ui.control.Label
        RX2NTextArea                   matlab.ui.control.TextArea
        RX2NTextAreaLabel              matlab.ui.control.Label
        F21NTextArea                   matlab.ui.control.TextArea
        F21NTextAreaLabel              matlab.ui.control.Label
        F20NTextArea                   matlab.ui.control.TextArea
        F20NTextAreaLabel              matlab.ui.control.Label
        F19NTextArea                   matlab.ui.control.TextArea
        F19NTextAreaLabel              matlab.ui.control.Label
        F18NTextArea                   matlab.ui.control.TextArea
        F18NTextAreaLabel              matlab.ui.control.Label
        F17NTextArea                   matlab.ui.control.TextArea
        F17NTextAreaLabel              matlab.ui.control.Label
        F16NTextArea                   matlab.ui.control.TextArea
        F16NTextAreaLabel              matlab.ui.control.Label
        F15NTextArea                   matlab.ui.control.TextArea
        F15NTextAreaLabel              matlab.ui.control.Label
        F14NTextArea                   matlab.ui.control.TextArea
        F14NTextAreaLabel              matlab.ui.control.Label
        F13NTextArea                   matlab.ui.control.TextArea
        F13NTextAreaLabel              matlab.ui.control.Label
        F12NTextArea                   matlab.ui.control.TextArea
        F12NTextAreaLabel              matlab.ui.control.Label
        F11NTextArea                   matlab.ui.control.TextArea
        F11NTextAreaLabel              matlab.ui.control.Label
        F10NTextArea                   matlab.ui.control.TextArea
        F10NTextAreaLabel              matlab.ui.control.Label
        F9NTextArea                    matlab.ui.control.TextArea
        F9NTextAreaLabel               matlab.ui.control.Label
        F8NTextArea                    matlab.ui.control.TextArea
        F8NTextAreaLabel               matlab.ui.control.Label
        F7NTextArea                    matlab.ui.control.TextArea
        F7NTextAreaLabel               matlab.ui.control.Label
        F6NTextArea                    matlab.ui.control.TextArea
        F6NTextAreaLabel               matlab.ui.control.Label
        F5NTextArea                    matlab.ui.control.TextArea
        F5NTextAreaLabel               matlab.ui.control.Label
        F4NTextArea                    matlab.ui.control.TextArea
        F4NTextAreaLabel               matlab.ui.control.Label
        F3NTextArea                    matlab.ui.control.TextArea
        F3NTextAreaLabel               matlab.ui.control.Label
        F2NTextArea                    matlab.ui.control.TextArea
        F2NLabel                       matlab.ui.control.Label
        F1NTextArea                    matlab.ui.control.TextArea
        F1NLabel                       matlab.ui.control.Label
        RY1NTextArea                   matlab.ui.control.TextArea
        RY1NTextAreaLabel              matlab.ui.control.Label
        RX1NTextArea                   matlab.ui.control.TextArea
        RX1NTextAreaLabel              matlab.ui.control.Label
        WholeBridgeCapabilityGauge     matlab.ui.control.NinetyDegreeGauge
        WholeBridgeCapabilityLabel     matlab.ui.control.Label
        Lamp21                         matlab.ui.control.Lamp
        Lamp_21Label                   matlab.ui.control.Label
        Lamp20                         matlab.ui.control.Lamp
        Lamp_20Label                   matlab.ui.control.Label
        Lamp19                         matlab.ui.control.Lamp
        Lamp_19Label                   matlab.ui.control.Label
        Lamp18                         matlab.ui.control.Lamp
        Lamp_18Label                   matlab.ui.control.Label
        Lamp17                         matlab.ui.control.Lamp
        Lamp_17Label                   matlab.ui.control.Label
        Lamp16                         matlab.ui.control.Lamp
        Lamp_16Label                   matlab.ui.control.Label
        Lamp15                         matlab.ui.control.Lamp
        Lamp_15Label                   matlab.ui.control.Label
        Lamp14                         matlab.ui.control.Lamp
        Lamp_14Label                   matlab.ui.control.Label
        Lamp13                         matlab.ui.control.Lamp
        Lamp_13Label                   matlab.ui.control.Label
        Lamp12                         matlab.ui.control.Lamp
        Lamp_12Label                   matlab.ui.control.Label
        Lamp11                         matlab.ui.control.Lamp
        Lamp_11Label                   matlab.ui.control.Label
        Lamp10                         matlab.ui.control.Lamp
        Lamp_10Label                   matlab.ui.control.Label
        Lamp9                          matlab.ui.control.Lamp
        Lamp_9Label                    matlab.ui.control.Label
        Lamp8                          matlab.ui.control.Lamp
        Lamp_8Label                    matlab.ui.control.Label
        Lamp7                          matlab.ui.control.Lamp
        Lamp_7Label                    matlab.ui.control.Label
        Lamp5                          matlab.ui.control.Lamp
        Lamp_6Label                    matlab.ui.control.Label
        Lamp6                          matlab.ui.control.Lamp
        Lamp_5Label                    matlab.ui.control.Label
        Lamp2                          matlab.ui.control.Lamp
        Lamp_4Label                    matlab.ui.control.Label
        Lamp3                          matlab.ui.control.Lamp
        Lamp_3Label                    matlab.ui.control.Label
        Lamp4                          matlab.ui.control.Lamp
        Lamp_2Label                    matlab.ui.control.Label
        Lamp1                          matlab.ui.control.Lamp
        Image                          matlab.ui.control.Image
        Label_2                        matlab.ui.control.Label
        InputsParametersPanel          matlab.ui.container.Panel
        PleaseEnteraRealisticIntegerorFloatingNumberLabel  matlab.ui.control.Label
        STOPButton                     matlab.ui.control.Button
        egF4F8F12F16Label              matlab.ui.control.Label
        egF1F20Label                   matlab.ui.control.Label
        egF2F3F5F6F9F10F13F14F17F18F19F21Label  matlab.ui.control.Label
        egF7F11F15Label                matlab.ui.control.Label
        NLabel_2                       matlab.ui.control.Label
        SIMULATEButton                 matlab.ui.control.Button
        CALCULATEButton                matlab.ui.control.Button
        W1W2W3W4W5EditField            matlab.ui.control.NumericEditField
        W1W2W3W4W5Label                matlab.ui.control.Label
        Compression1010_100            matlab.ui.control.TextArea
        BreakingLoadNbyy625x2047Label_4  matlab.ui.control.Label
        Compression1010_160            matlab.ui.control.TextArea
        BreakingLoadNbyy625x2047Label_3  matlab.ui.control.Label
        Tension125                     matlab.ui.control.TextArea
        BreakingLoadNbyy625x2047Label_2  matlab.ui.control.Label
        Compression610_125             matlab.ui.control.TextArea
        BreakingLoadNbyy625x2047Label  matlab.ui.control.Label
        Label                          matlab.ui.control.Label
        BreakingLoadsNLabel            matlab.ui.control.Label
        LoadsWWnet5appliedatPointsCEGIKLabel  matlab.ui.control.Label
        NLabel                         matlab.ui.control.Label
        TotalLoadAppliedWnetEditField  matlab.ui.control.NumericEditField
        TotalLoadAppliedWnetEditFieldLabel  matlab.ui.control.Label
        BridgeLoadingAnalysisSimulationbyGroup4Label  matlab.ui.control.Label
    end

    
    properties (Access = public)

        StopFlag logical = false; % 停止标志

    end
 

    % Callbacks that handle component events
    methods (Access = private)

        % Value changed function: TotalLoadAppliedWnetEditField
        function TotalLoadAppliedWnetEditFieldValueChanged(app, event)
            % load_total = app.TotalLoadAppliedWnetEditField.Value;
            
        end

        % Button pushed function: CALCULATEButton
        function CALCULATEButtonPushed(app, event)
            % calculate breaking loads 计算断裂强度
            l20 = sqrt(12.5^2 + 10.0^2);
            BreakingLoadCompression125 = -6.25*(12.5)+204.7;      % 6 x 10 x 12 ------(129.70 in 12) --(126.57 in 12.5)
            BreakingLoadTension125 = (7.46*(4)+1.24)*2 ;               % 4 x varyig length--(  31.08 ) --(31.08 )
            BreakingLoadCompression160 = -4.62* l20 + 217.29;   % 10 x 10 x 17.0 -----(138.75 in 17) --(143.37 in 16)
            BreakingLoadCompression100 = -4.62*(10.0) + 217.29;   % 10 x 10 x 10.0 -----(171.09 in 10) --(171.09 in 10)

            % setting breaking loads 赋值
            app.Compression610_125.Value = sprintf('%.2f', BreakingLoadCompression125); % 6 x 10 x 125
            app.Tension125.Value = sprintf('%.2f', BreakingLoadTension125);             % 4 x varyig length
            app.Compression1010_160.Value = sprintf('%.2f', BreakingLoadCompression160); % 10 x 10 x 160 
            app.Compression1010_100.Value = sprintf('%.2f', BreakingLoadCompression100); % 10 x 10 x 100 

            % Breaking Loads of each Member F1 - F21 记录每个member的理论Breaking Load结果
            BreakingLoads = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}; % 21 x '0'
            type1 = {7,11,15}; % 6 x 10 x 125
            type2 = {2,3,5,6,9,10,13,14,17,18,19,21}; % 4 x varyig length
            type3 = {1,20}; % 10 x 10 x 160
            type4 = {4,8,12,16}; % 10 x 10 x 100
            types = {type1, type2, type3, type4};
            BreakingLoadsType = {BreakingLoadCompression125, BreakingLoadTension125, BreakingLoadCompression160, BreakingLoadCompression100};
            for i = 1:length(types)
                for j = 1:length(types{i})
                    BreakingLoads{types{i}{j}} = BreakingLoadsType{i};
                end    
            end

            % obtain total load and calcuate 获取总负载并且计算、赋值5个负载点
            load_total = app.TotalLoadAppliedWnetEditField.Value;
            w = load_total / 5;
            w1 = w;
            w2 = w;
            w3 = w;            
            w4 = w;
            w5 = w;

            % check the value
            app.PleaseEnteraRealisticIntegerorFloatingNumberLabel.Visible = "off";
            if load_total < 0
                app.PleaseEnteraRealisticIntegerorFloatingNumberLabel.Visible = "on";
            end

            % 赋值给相应的 TextArea 控件
            app.W1NTextArea.Value = sprintf('%.2f', w); % C
            app.W2NTextArea.Value = sprintf('%.2f', w); % E
            app.W3NTextArea.Value = sprintf('%.2f', w); % G
            app.W4NTextArea.Value = sprintf('%.2f', w); % I 
            app.W5NTextArea.Value = sprintf('%.2f', w); % K
            app.W1W2W3W4W5EditField.Value = str2double(sprintf('%.2f', w));

            % copy and paste from the original
            app.AngleEditField.Value = round(atan(125/100)*180/3.14 , 2);
            theta1 = app.AngleEditField.Value;
            c = cosd(theta1);
            s = sind(theta1);

            % Wnet = str2double(input('Please Enter a Load in Unit of N: ', 's')); % Convert input to double; Unit N
            % w = Wnet / 5;

            unknown_labels = {'RX1', 'RY1', 'F1', 'F2', 'F3', 'F4', 'F5', 'F6', 'F7', 'F8', 'F9', ...
                  'F10', 'F11', 'F12', 'F13', 'F14', 'F15', 'F16', 'F17', ...
                  'F18', 'F19', 'F20', 'F21','RX2' 'RY2'};
            num_unknowns = length(unknown_labels); % 21 + 4 = 25

            Loads = {app.RX1NTextArea, app.RY1NTextArea, app.F1NTextArea, app.F2NTextArea, app.F3NTextArea, ...
                app.F4NTextArea, app.F5NTextArea, app.F6NTextArea, app.F7NTextArea, app.F8NTextArea, app.F9NTextArea, app.F10NTextArea, ...
                app.F11NTextArea,app.F12NTextArea,app.F13NTextArea,app.F14NTextArea,app.F15NTextArea,app.F16NTextArea,app.F17NTextArea, ...
                app.F18NTextArea,app.F19NTextArea,app.F20NTextArea,app.F21NTextArea,app.RX2NTextArea,app.RY2NTextArea};

            Lamps = {app.Lamp1, app.Lamp2, app.Lamp3, app.Lamp4, app.Lamp5, app.Lamp6, app.Lamp7, app.Lamp8, app.Lamp9, ...
                app.Lamp10, app.Lamp11, app.Lamp12, app.Lamp13, app.Lamp14, app.Lamp15, app.Lamp16, app.Lamp17, app.Lamp18, ...
                app.Lamp19, app.Lamp20, app.Lamp21};

            % build the coefficient matrix 构建系数矩阵
            A = [
            %RX1 RY1 F1	F2	F3	F4	F5	F6	F7	F8	F9	F10	F11	F12	F13	F14	F15	F16	F17	F18	F19	F20	F21	RX2	RY2
            1,	0,	c,	1,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0; % A X
            0,	1,	s,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0; % A Y
            0,	0, -c,  0,	0,	1,	c,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0; % B X
            0,	0, -s,	0, -1,	0, -s,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0; % B Y
            0,	0,	0, -1,	0,	0,	0,	1,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0; % C X
            0,	0,	0,	0,	1,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0; % C Y
            0,	0,	0,	0,	0, -1,	0,	0,	0,	1,	c,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0; % D X
            0,	0,	0,	0,	0,	0,	0,	0, -1,	0, -s,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0; % D Y
            0,	0,	0,	0,	0,	0, -c, -1,	0,	0,	0,	1,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0; % E X
            0,	0,	0,	0,	0,	0,  s,	0,	1,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0; % E Y
            0,	0,	0,	0,	0,	0,	0,	0,	0, -1,	0,	0,	0,	1,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0; % F X
            0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0, -1,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0; % F Y
            0,	0,	0,	0,	0,	0,	0,	0,	0,	0, -c, -1,	0,	0,	c,	1,	0,	0,	0,	0,	0,	0,	0,	0,	0; % G X
            0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	s,	0,	1,	0,	s,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0; % G Y
            0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0, -1, -c,	0,	0,	1,	0,	0,	0,	0,	0,	0,	0; % H X
            0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0, -s,	0, -1,	0,	0,	0,	0,	0,	0,	0,	0; % H Y
            0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0, -1,	0,	0,	c,	1,	0,	0,	0,	0,	0; % I X
            0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	1,	0,	s,	0,	0,	0,	0,	0,	0; % I Y
            0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0, -1, -c,	0,	0,	c,	0,	0,	0; % J X
            0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0, -s,	0, -1, -s,	0,	0,	0; % J Y
            0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0, -1,	0,	0,	1,	0,	0; % K X
            0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	1,	0,	0,	0,	0; % K Y
            0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0, -c, -1, -1,	0; % L X
            0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	s,	0,	0,	1; % L Y
            %RX1 RY1 F1	F2	F3	F4	F5	F6	F7	F8	F9	F10	F11	F12	F13	F14	F15	F16	F17	F18	F19	F20	F21	RX2	RY2
            ];

            % build the load matrix / vector 构建负载矩阵/向量 只出现在点C,E,G,I,K的Y方向
            b = [0;	0; 0; 0; 0; w1; 0; 0; 0; w2; 0; 0; 0; w3; 0; 0; 0; w4; 0; 0; 0; w5; 0; 0];

            % solve the equation 求解方程 Ax = b
            x = A \ b;

            % results
            for i = 1:num_unknowns
                Loads{i}.Value = sprintf('%.2f',x(i));
            end

            % Lamps Setting 设置信号灯光和仪表盘
            Ratio = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}; % 21 x '0'
            RatioArray = cell2mat(Ratio);  % cell数组->数值数组
            maxRatio = max(RatioArray); % max 最大比值
            for j = 1:length(Ratio)
                Lamps{j}.Visible = "on";
                % 计算各个负载百分比
                RatioArray(j) = abs(x(j+2)) / abs(BreakingLoads{j});  
                % 设置最大值
                if RatioArray(j) >= maxRatio
                    maxRatio = RatioArray(j);
                end
                % 设置各个灯光和文本区域背景颜色
                if RatioArray(j) >= 1.0
                    Lamps{j}.Color = 'red';
                    Loads{j+2}.BackgroundColor = 'red';
                elseif RatioArray(j) >= 0.8
                    Lamps{j}.Color = 'yellow';
                    Loads{j+2}.BackgroundColor = 'yellow';
                else
                    Lamps{j}.Color = 'green';
                    Loads{j+2}.BackgroundColor = 'white';
                end    
            end
            % 仪表盘和数值显示设置
            app.WholeBridgeCapabilityGauge.Value = max(maxRatio)*100;
            app.TotalCapabilityEditField.Value = app.WholeBridgeCapabilityGauge.Value;
            if maxRatio >= 1.0
                app.TotalCapabilityEditField.BackgroundColor = 'red';
            elseif maxRatio >= 0.8
                app.TotalCapabilityEditField.BackgroundColor = 'yellow';
            else
                app.TotalCapabilityEditField.BackgroundColor = 'green';
            end

        end

        % Button pushed function: SIMULATEButton
        function SIMULATEButtonPushed(app, event)
            app.STOPButton.Visible = 'on';    % 停止按钮 可视化
            app.STOPButton.Enable = 'on';     % 停止按钮 功能启用

            % calculate breaking loads 计算断裂强度
            l20 = sqrt(12.5^2 + 10.0^2);
            BreakingLoadCompression125 = -6.25*(12.5)+204.7;      % 6 x 10 x 12 ------(129.70 in 12) --(126.57 in 12.5)
            BreakingLoadTension125 = (7.46*(4)+1.24)*2 ;               % 4 x varyig length--(  31.08 ) --(31.08 )
            BreakingLoadCompression160 = -4.62* l20 + 217.29;   % 10 x 10 x 17.0 -----(138.75 in 17) --(143.37 in 16)
            BreakingLoadCompression100 = -4.62*(10.0) + 217.29;   % 10 x 10 x 10.0 -----(171.09 in 10) --(171.09 in 10)

            % setting breaking loads 赋值
            app.Compression610_125.Value = sprintf('%.2f', BreakingLoadCompression125); % 6 x 10 x 125
            app.Tension125.Value = sprintf('%.2f', BreakingLoadTension125);             % 4 x varyig length
            app.Compression1010_160.Value = sprintf('%.2f', BreakingLoadCompression160); % 10 x 10 x 160 
            app.Compression1010_100.Value = sprintf('%.2f', BreakingLoadCompression100); % 10 x 10 x 100 

            % Breaking Loads of each Member F1 - F21 记录每个member的理论Breaking Load结果
            BreakingLoads = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}; % 21 x '0'
            type1 = {7,11,15}; % 6 x 10 x 125
            type2 = {2,3,5,6,9,10,13,14,17,18,19,21}; % 4 x varyig length
            type3 = {1,20}; % 10 x 10 x 160
            type4 = {4,8,12,16}; % 10 x 10 x 100
            types = {type1, type2, type3, type4};
            BreakingLoadsType = {BreakingLoadCompression125, BreakingLoadTension125, BreakingLoadCompression160, BreakingLoadCompression100};
            for i = 1:length(types)
                for j = 1:length(types{i})
                    BreakingLoads{types{i}{j}} = BreakingLoadsType{i};
                end    
            end
            BreakingLoadsArray = cell2mat(BreakingLoads);

            % Initialize
            app.TotalLoadAppliedWnetEditField.Value = 1;

            % copy and paste from the original
            app.AngleEditField.Value = round(atan(125/100)*180/3.14 , 2);
            theta1 = app.AngleEditField.Value;
            c = cosd(theta1);
            s = sind(theta1);

            Lamps = {app.Lamp1, app.Lamp2, app.Lamp3, app.Lamp4, app.Lamp5, app.Lamp6, app.Lamp7, app.Lamp8, app.Lamp9, ...
                app.Lamp10, app.Lamp11, app.Lamp12, app.Lamp13, app.Lamp14, app.Lamp15, app.Lamp16, app.Lamp17, app.Lamp18, ...
                app.Lamp19, app.Lamp20, app.Lamp21};


            % CALCULATEButtonPushed(app,event);

            Loads = {app.RX1NTextArea, app.RY1NTextArea, app.F1NTextArea, app.F2NTextArea, app.F3NTextArea, ...
                app.F4NTextArea, app.F5NTextArea, app.F6NTextArea, app.F7NTextArea, app.F8NTextArea, app.F9NTextArea, app.F10NTextArea, ...
                app.F11NTextArea,app.F12NTextArea,app.F13NTextArea,app.F14NTextArea,app.F15NTextArea,app.F16NTextArea,app.F17NTextArea, ...
                app.F18NTextArea,app.F19NTextArea,app.F20NTextArea,app.F21NTextArea,app.RX2NTextArea,app.RY2NTextArea};
            Ratio = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}; % 21 x '0'
            RatioArray = cell2mat(Ratio);  % cell数组->数值数组
            maxRatio = 0; % max 最大值

            app.TotalLoadAppliedWnetEditField.Value = app.TotalLoadAppliedWnetEditField.Value + 15;
            while (maxRatio <= 100) && ~app.StopFlag % maxRatio 没有到离谱程度 且 STOP按钮没有被点击
                
                % obtain total load and calcuate 获取总负载并且计算、赋值5个负载点
                load_total = app.TotalLoadAppliedWnetEditField.Value;
                w = load_total / 5;
                w1 = w;
                w2 = w;
                w3 = w;            
                w4 = w;
                w5 = w;

                % 赋值给相应的 TextArea 控件
                app.W1NTextArea.Value = sprintf('%.2f', w); % C
                app.W2NTextArea.Value = sprintf('%.2f', w); % E
                app.W3NTextArea.Value = sprintf('%.2f', w); % G
                app.W4NTextArea.Value = sprintf('%.2f', w); % I 
                app.W5NTextArea.Value = sprintf('%.2f', w); % K
                app.W1W2W3W4W5EditField.Value = str2double(sprintf('%.2f', w));

                % build the coefficient matrix 构建系数矩阵
                A = [
                %RX1 RY1 F1	F2	F3	F4	F5	F6	F7	F8	F9	F10	F11	F12	F13	F14	F15	F16	F17	F18	F19	F20	F21	RX2	RY2
                1,	0,	c,	1,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0; % A X
                0,	1,	s,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0; % A Y
                0,	0, -c,  0,	0,	1,	c,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0; % B X
                0,	0, -s,	0, -1,	0, -s,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0; % B Y
                0,	0,	0, -1,	0,	0,	0,	1,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0; % C X
                0,	0,	0,	0,	1,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0; % C Y
                0,	0,	0,	0,	0, -1,	0,	0,	0,	1,	c,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0; % D X
                0,	0,	0,	0,	0,	0,	0,	0, -1,	0, -s,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0; % D Y
                0,	0,	0,	0,	0,	0, -c, -1,	0,	0,	0,	1,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0; % E X
                0,	0,	0,	0,	0,	0,  s,	0,	1,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0; % E Y
                0,	0,	0,	0,	0,	0,	0,	0,	0, -1,	0,	0,	0,	1,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0; % F X
                0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0, -1,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0; % F Y
                0,	0,	0,	0,	0,	0,	0,	0,	0,	0, -c, -1,	0,	0,	c,	1,	0,	0,	0,	0,	0,	0,	0,	0,	0; % G X
                0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	s,	0,	1,	0,	s,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0; % G Y
                0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0, -1, -c,	0,	0,	1,	0,	0,	0,	0,	0,	0,	0; % H X
                0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0, -s,	0, -1,	0,	0,	0,	0,	0,	0,	0,	0; % H Y
                0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0, -1,	0,	0,	c,	1,	0,	0,	0,	0,	0; % I X
                0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	1,	0,	s,	0,	0,	0,	0,	0,	0; % I Y
                0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0, -1, -c,	0,	0,	c,	0,	0,	0; % J X
                0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0, -s,	0, -1, -s,	0,	0,	0; % J Y
                0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0, -1,	0,	0,	1,	0,	0; % K X
                0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	1,	0,	0,	0,	0; % K Y
                0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0, -c, -1, -1,	0; % L X
                0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	0,	s,	0,	0,	1; % L Y
                %RX1 RY1 F1	F2	F3	F4	F5	F6	F7	F8	F9	F10	F11	F12	F13	F14	F15	F16	F17	F18	F19	F20	F21	RX2	RY2
                ];
    
                % build the load matrix / vector 构建负载矩阵/向量 只出现在点C,E,G,I,K的Y方向
                b = [0;	0; 0; 0; 0; w1; 0; 0; 0; w2; 0; 0; 0; w3; 0; 0; 0; w4; 0; 0; 0; w5; 0; 0];
    
                % solve the equation 求解方程 Ax = b
                x = A \ b;

                % 显示结果 results
                for i = 1:length(Loads)
                    Loads{i}.Value = sprintf('%.2f',x(i));
                end
                % LoadsArray = cell2mat(Loads);
                % 计算百分比
                for j = 1:length(RatioArray)
                    RatioArray(j) = x(j+2) / BreakingLoadsArray(j);
                    Lamps{j}.Visible = 'on';
                % 设置各个灯光和文本区域背景颜色
                    if RatioArray(j) >= 1.0
                         Lamps{j}.Color = 'red';
                         Loads{j+2}.BackgroundColor = 'red';                         
                    elseif RatioArray(j) >= 0.8
                         Lamps{j}.Color = 'yellow';
                         Loads{j+2}.BackgroundColor = 'yellow';
                    else
                         Lamps{j}.Color = 'green';
                         Loads{j+2}.BackgroundColor = 'white';
                    end 
                end
        % 更新整桥能力 和 仪表盘及其显示设置
                maxRatio = max(RatioArray); 
                app.WholeBridgeCapabilityGauge.Value = max(maxRatio)*100;
                app.TotalCapabilityEditField.Value = app.WholeBridgeCapabilityGauge.Value;
                if maxRatio >= 1.0
                    app.TotalCapabilityEditField.BackgroundColor = 'red';
                elseif maxRatio >= 0.8
                    app.TotalCapabilityEditField.BackgroundColor = 'yellow';
                else
                    app.TotalCapabilityEditField.BackgroundColor = 'green';
                end

        % 修改负载
                if maxRatio < 0.75
                    app.TotalLoadAppliedWnetEditField.Value = app.TotalLoadAppliedWnetEditField.Value + 5; % 负载快速上升
                elseif maxRatio < 0.98
                    app.TotalLoadAppliedWnetEditField.Value = app.TotalLoadAppliedWnetEditField.Value + 2; % 负载减速上升
                elseif maxRatio < 0.995
                    app.TotalLoadAppliedWnetEditField.Value = app.TotalLoadAppliedWnetEditField.Value + 0.1; % 再减速
                elseif maxRatio < 1.02
                    app.TotalLoadAppliedWnetEditField.Value = app.TotalLoadAppliedWnetEditField.Value + 0.05; % 更减速
                end

                if maxRatio >= 1
                    app.StopFlag = true;              % 设置停止
                end

                pause(1);

            end

            app.StopFlag = false;              % 重置
            app.STOPButton.Enable = 'off';     % 停止按钮 功能禁用

        end

        % Button pushed function: STOPButton
        function STOPButtonPushed(app, event)
            app.StopFlag = true;
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 1171 938];
            app.UIFigure.Name = 'MATLAB App';

            % Create BridgeLoadingAnalysisSimulationbyGroup4Label
            app.BridgeLoadingAnalysisSimulationbyGroup4Label = uilabel(app.UIFigure);
            app.BridgeLoadingAnalysisSimulationbyGroup4Label.BackgroundColor = [1 1 0];
            app.BridgeLoadingAnalysisSimulationbyGroup4Label.HorizontalAlignment = 'center';
            app.BridgeLoadingAnalysisSimulationbyGroup4Label.VerticalAlignment = 'top';
            app.BridgeLoadingAnalysisSimulationbyGroup4Label.WordWrap = 'on';
            app.BridgeLoadingAnalysisSimulationbyGroup4Label.FontName = 'Times New Roman';
            app.BridgeLoadingAnalysisSimulationbyGroup4Label.FontSize = 28;
            app.BridgeLoadingAnalysisSimulationbyGroup4Label.FontWeight = 'bold';
            app.BridgeLoadingAnalysisSimulationbyGroup4Label.Position = [1 900 1171 42];
            app.BridgeLoadingAnalysisSimulationbyGroup4Label.Text = 'Bridge Loading Analysis & Simulation by Group 4';

            % Create InputsParametersPanel
            app.InputsParametersPanel = uipanel(app.UIFigure);
            app.InputsParametersPanel.Title = ' Inputs & Parameters';
            app.InputsParametersPanel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.InputsParametersPanel.FontWeight = 'bold';
            app.InputsParametersPanel.FontSize = 22;
            app.InputsParametersPanel.Position = [21 506 1140 210];

            % Create TotalLoadAppliedWnetEditFieldLabel
            app.TotalLoadAppliedWnetEditFieldLabel = uilabel(app.InputsParametersPanel);
            app.TotalLoadAppliedWnetEditFieldLabel.BackgroundColor = [0.902 0.902 0.902];
            app.TotalLoadAppliedWnetEditFieldLabel.HorizontalAlignment = 'right';
            app.TotalLoadAppliedWnetEditFieldLabel.FontSize = 20;
            app.TotalLoadAppliedWnetEditFieldLabel.FontWeight = 'bold';
            app.TotalLoadAppliedWnetEditFieldLabel.Position = [5 147 246 26];
            app.TotalLoadAppliedWnetEditFieldLabel.Text = 'Total Load Applied Wnet:';

            % Create TotalLoadAppliedWnetEditField
            app.TotalLoadAppliedWnetEditField = uieditfield(app.InputsParametersPanel, 'numeric');
            app.TotalLoadAppliedWnetEditField.ValueChangedFcn = createCallbackFcn(app, @TotalLoadAppliedWnetEditFieldValueChanged, true);
            app.TotalLoadAppliedWnetEditField.HorizontalAlignment = 'center';
            app.TotalLoadAppliedWnetEditField.FontSize = 20;
            app.TotalLoadAppliedWnetEditField.BackgroundColor = [0.902 0.902 0.902];
            app.TotalLoadAppliedWnetEditField.Position = [266 146 100 27];

            % Create NLabel
            app.NLabel = uilabel(app.InputsParametersPanel);
            app.NLabel.FontSize = 14;
            app.NLabel.FontWeight = 'bold';
            app.NLabel.Position = [369 150 28 22];
            app.NLabel.Text = ' (N)';

            % Create LoadsWWnet5appliedatPointsCEGIKLabel
            app.LoadsWWnet5appliedatPointsCEGIKLabel = uilabel(app.InputsParametersPanel);
            app.LoadsWWnet5appliedatPointsCEGIKLabel.FontColor = [0.502 0.502 0.502];
            app.LoadsWWnet5appliedatPointsCEGIKLabel.Position = [685 129 276 22];
            app.LoadsWWnet5appliedatPointsCEGIKLabel.Text = 'Loads W = Wnet / 5 applied at Points C, E, G, I, K.';

            % Create BreakingLoadsNLabel
            app.BreakingLoadsNLabel = uilabel(app.InputsParametersPanel);
            app.BreakingLoadsNLabel.BackgroundColor = [0.902 0.902 0.902];
            app.BreakingLoadsNLabel.HorizontalAlignment = 'center';
            app.BreakingLoadsNLabel.FontSize = 20;
            app.BreakingLoadsNLabel.FontWeight = 'bold';
            app.BreakingLoadsNLabel.FontColor = [0.149 0.149 0.149];
            app.BreakingLoadsNLabel.Position = [8 117 196 26];
            app.BreakingLoadsNLabel.Text = 'Breaking Loads (N):';

            % Create Label
            app.Label = uilabel(app.InputsParametersPanel);
            app.Label.FontSize = 14;
            app.Label.FontColor = [0.502 0.502 0.502];
            app.Label.Position = [203 119 423 22];
            app.Label.Text = 'To calculate the theoretical Breaking Load by function from Testing';

            % Create BreakingLoadNbyy625x2047Label
            app.BreakingLoadNbyy625x2047Label = uilabel(app.InputsParametersPanel);
            app.BreakingLoadNbyy625x2047Label.HorizontalAlignment = 'center';
            app.BreakingLoadNbyy625x2047Label.FontSize = 14;
            app.BreakingLoadNbyy625x2047Label.FontWeight = 'bold';
            app.BreakingLoadNbyy625x2047Label.Position = [4 70 247 34];
            app.BreakingLoadNbyy625x2047Label.Text = {'6*10 members with Length 12 cm '; 'in Compressio by y = - 6.25x + 204.7'};

            % Create Compression610_125
            app.Compression610_125 = uitextarea(app.InputsParametersPanel);
            app.Compression610_125.Editable = 'off';
            app.Compression610_125.HorizontalAlignment = 'center';
            app.Compression610_125.FontSize = 18;
            app.Compression610_125.FontWeight = 'bold';
            app.Compression610_125.Position = [52 35 150 29];

            % Create BreakingLoadNbyy625x2047Label_2
            app.BreakingLoadNbyy625x2047Label_2 = uilabel(app.InputsParametersPanel);
            app.BreakingLoadNbyy625x2047Label_2.HorizontalAlignment = 'center';
            app.BreakingLoadNbyy625x2047Label_2.FontSize = 14;
            app.BreakingLoadNbyy625x2047Label_2.FontWeight = 'bold';
            app.BreakingLoadNbyy625x2047Label_2.Position = [268 70 289 34];
            app.BreakingLoadNbyy625x2047Label_2.Text = {'Varying Length Members with Width 4mm '; 'in Tension by y = 7.46x + 1.24'};

            % Create Tension125
            app.Tension125 = uitextarea(app.InputsParametersPanel);
            app.Tension125.Editable = 'off';
            app.Tension125.HorizontalAlignment = 'center';
            app.Tension125.FontSize = 18;
            app.Tension125.FontWeight = 'bold';
            app.Tension125.Position = [345 35 150 30];

            % Create BreakingLoadNbyy625x2047Label_3
            app.BreakingLoadNbyy625x2047Label_3 = uilabel(app.InputsParametersPanel);
            app.BreakingLoadNbyy625x2047Label_3.HorizontalAlignment = 'center';
            app.BreakingLoadNbyy625x2047Label_3.FontSize = 14;
            app.BreakingLoadNbyy625x2047Label_3.FontWeight = 'bold';
            app.BreakingLoadNbyy625x2047Label_3.Position = [594 68 255 34];
            app.BreakingLoadNbyy625x2047Label_3.Text = {'10*10 members of the Hypotenuse '; 'in Compresion by y = - 4.62x + 217.29'};

            % Create Compression1010_160
            app.Compression1010_160 = uitextarea(app.InputsParametersPanel);
            app.Compression1010_160.Editable = 'off';
            app.Compression1010_160.HorizontalAlignment = 'center';
            app.Compression1010_160.FontSize = 18;
            app.Compression1010_160.FontWeight = 'bold';
            app.Compression1010_160.Position = [654 35 150 29];

            % Create BreakingLoadNbyy625x2047Label_4
            app.BreakingLoadNbyy625x2047Label_4 = uilabel(app.InputsParametersPanel);
            app.BreakingLoadNbyy625x2047Label_4.HorizontalAlignment = 'center';
            app.BreakingLoadNbyy625x2047Label_4.FontSize = 14;
            app.BreakingLoadNbyy625x2047Label_4.FontWeight = 'bold';
            app.BreakingLoadNbyy625x2047Label_4.Position = [880 67 254 34];
            app.BreakingLoadNbyy625x2047Label_4.Text = {'10*10 members with Length 10.0cm '; 'in Compressio by y = - 4.62x + 217.29'};

            % Create Compression1010_100
            app.Compression1010_100 = uitextarea(app.InputsParametersPanel);
            app.Compression1010_100.Editable = 'off';
            app.Compression1010_100.HorizontalAlignment = 'center';
            app.Compression1010_100.FontSize = 18;
            app.Compression1010_100.FontWeight = 'bold';
            app.Compression1010_100.Position = [941 35 150 29];

            % Create W1W2W3W4W5Label
            app.W1W2W3W4W5Label = uilabel(app.InputsParametersPanel);
            app.W1W2W3W4W5Label.HorizontalAlignment = 'right';
            app.W1W2W3W4W5Label.FontSize = 18;
            app.W1W2W3W4W5Label.FontWeight = 'bold';
            app.W1W2W3W4W5Label.Position = [639 149 194 23];
            app.W1W2W3W4W5Label.Text = 'W1=W2=W3=W4=W5=';

            % Create W1W2W3W4W5EditField
            app.W1W2W3W4W5EditField = uieditfield(app.InputsParametersPanel, 'numeric');
            app.W1W2W3W4W5EditField.Editable = 'off';
            app.W1W2W3W4W5EditField.HorizontalAlignment = 'center';
            app.W1W2W3W4W5EditField.FontSize = 20;
            app.W1W2W3W4W5EditField.Position = [842 147 77 27];

            % Create CALCULATEButton
            app.CALCULATEButton = uibutton(app.InputsParametersPanel, 'push');
            app.CALCULATEButton.ButtonPushedFcn = createCallbackFcn(app, @CALCULATEButtonPushed, true);
            app.CALCULATEButton.IconAlignment = 'center';
            app.CALCULATEButton.BackgroundColor = [1 1 0];
            app.CALCULATEButton.FontSize = 14;
            app.CALCULATEButton.FontWeight = 'bold';
            app.CALCULATEButton.FontColor = [1 0 0];
            app.CALCULATEButton.Position = [402 148 100 24];
            app.CALCULATEButton.Text = 'CALCULATE';

            % Create SIMULATEButton
            app.SIMULATEButton = uibutton(app.InputsParametersPanel, 'push');
            app.SIMULATEButton.ButtonPushedFcn = createCallbackFcn(app, @SIMULATEButtonPushed, true);
            app.SIMULATEButton.IconAlignment = 'center';
            app.SIMULATEButton.BackgroundColor = [1 1 0];
            app.SIMULATEButton.FontSize = 14;
            app.SIMULATEButton.FontWeight = 'bold';
            app.SIMULATEButton.FontColor = [1 0 0];
            app.SIMULATEButton.Position = [521 148 100 24];
            app.SIMULATEButton.Text = 'SIMULATE';

            % Create NLabel_2
            app.NLabel_2 = uilabel(app.InputsParametersPanel);
            app.NLabel_2.FontSize = 14;
            app.NLabel_2.FontWeight = 'bold';
            app.NLabel_2.Position = [918 148 28 22];
            app.NLabel_2.Text = ' (N)';

            % Create egF7F11F15Label
            app.egF7F11F15Label = uilabel(app.InputsParametersPanel);
            app.egF7F11F15Label.FontWeight = 'bold';
            app.egF7F11F15Label.FontColor = [0.502 0.502 0.502];
            app.egF7F11F15Label.Position = [81 6 94 22];
            app.egF7F11F15Label.Text = 'eg. F7, F11, F15';

            % Create egF2F3F5F6F9F10F13F14F17F18F19F21Label
            app.egF2F3F5F6F9F10F13F14F17F18F19F21Label = uilabel(app.InputsParametersPanel);
            app.egF2F3F5F6F9F10F13F14F17F18F19F21Label.FontWeight = 'bold';
            app.egF2F3F5F6F9F10F13F14F17F18F19F21Label.FontColor = [0.502 0.502 0.502];
            app.egF2F3F5F6F9F10F13F14F17F18F19F21Label.Position = [267 2 315 30];
            app.egF2F3F5F6F9F10F13F14F17F18F19F21Label.Text = 'eg. F2, F3, F5, F6, F9, F10, F13, F14, F17, F18, F19, F21';

            % Create egF1F20Label
            app.egF1F20Label = uilabel(app.InputsParametersPanel);
            app.egF1F20Label.FontWeight = 'bold';
            app.egF1F20Label.FontColor = [0.502 0.502 0.502];
            app.egF1F20Label.Position = [698 10 67 22];
            app.egF1F20Label.Text = 'eg. F1, F20';

            % Create egF4F8F12F16Label
            app.egF4F8F12F16Label = uilabel(app.InputsParametersPanel);
            app.egF4F8F12F16Label.FontWeight = 'bold';
            app.egF4F8F12F16Label.FontColor = [0.502 0.502 0.502];
            app.egF4F8F12F16Label.Position = [948 6 115 22];
            app.egF4F8F12F16Label.Text = 'eg. F4, F8, F12, F16';

            % Create STOPButton
            app.STOPButton = uibutton(app.InputsParametersPanel, 'push');
            app.STOPButton.ButtonPushedFcn = createCallbackFcn(app, @STOPButtonPushed, true);
            app.STOPButton.BackgroundColor = [1 0 0];
            app.STOPButton.FontSize = 18;
            app.STOPButton.FontWeight = 'bold';
            app.STOPButton.FontColor = [1 1 0];
            app.STOPButton.Enable = 'off';
            app.STOPButton.Visible = 'off';
            app.STOPButton.Position = [982 129 123 31];
            app.STOPButton.Text = '! STOP !';

            % Create PleaseEnteraRealisticIntegerorFloatingNumberLabel
            app.PleaseEnteraRealisticIntegerorFloatingNumberLabel = uilabel(app.InputsParametersPanel);
            app.PleaseEnteraRealisticIntegerorFloatingNumberLabel.BackgroundColor = [1 0 0];
            app.PleaseEnteraRealisticIntegerorFloatingNumberLabel.FontSize = 14;
            app.PleaseEnteraRealisticIntegerorFloatingNumberLabel.FontWeight = 'bold';
            app.PleaseEnteraRealisticIntegerorFloatingNumberLabel.FontColor = [1 1 0];
            app.PleaseEnteraRealisticIntegerorFloatingNumberLabel.Visible = 'off';
            app.PleaseEnteraRealisticIntegerorFloatingNumberLabel.Position = [254 180 418 22];
            app.PleaseEnteraRealisticIntegerorFloatingNumberLabel.Text = ' ！！Please Enter a Realistic Integer or Floating Number ！！';

            % Create AnalysisSimulationPanel
            app.AnalysisSimulationPanel = uipanel(app.UIFigure);
            app.AnalysisSimulationPanel.Title = ' Analysis & Simulation';
            app.AnalysisSimulationPanel.FontWeight = 'bold';
            app.AnalysisSimulationPanel.FontSize = 22;
            app.AnalysisSimulationPanel.Position = [21 13 1140 495];

            % Create Label_2
            app.Label_2 = uilabel(app.AnalysisSimulationPanel);
            app.Label_2.HorizontalAlignment = 'right';
            app.Label_2.Visible = 'off';
            app.Label_2.Position = [103 333 25 22];
            app.Label_2.Text = '';

            % Create Image
            app.Image = uiimage(app.AnalysisSimulationPanel);
            app.Image.Position = [1 158 949 303];
            app.Image.ImageSource = 'Model_OF_Bridge.png';

            % Create Lamp1
            app.Lamp1 = uilamp(app.AnalysisSimulationPanel);
            app.Lamp1.Visible = 'off';
            app.Lamp1.Position = [140 319 20 20];

            % Create Lamp_2Label
            app.Lamp_2Label = uilabel(app.AnalysisSimulationPanel);
            app.Lamp_2Label.HorizontalAlignment = 'right';
            app.Lamp_2Label.Visible = 'off';
            app.Lamp_2Label.Position = [236 415 25 22];
            app.Lamp_2Label.Text = '';

            % Create Lamp4
            app.Lamp4 = uilamp(app.AnalysisSimulationPanel);
            app.Lamp4.Visible = 'off';
            app.Lamp4.Position = [273 401 20 20];

            % Create Lamp_3Label
            app.Lamp_3Label = uilabel(app.AnalysisSimulationPanel);
            app.Lamp_3Label.HorizontalAlignment = 'right';
            app.Lamp_3Label.Visible = 'off';
            app.Lamp_3Label.Position = [165 313 25 22];
            app.Lamp_3Label.Text = '';

            % Create Lamp3
            app.Lamp3 = uilamp(app.AnalysisSimulationPanel);
            app.Lamp3.Visible = 'off';
            app.Lamp3.Position = [202 299 20 20];

            % Create Lamp_4Label
            app.Lamp_4Label = uilabel(app.AnalysisSimulationPanel);
            app.Lamp_4Label.HorizontalAlignment = 'right';
            app.Lamp_4Label.Visible = 'off';
            app.Lamp_4Label.Position = [114 244 25 22];
            app.Lamp_4Label.Text = '';

            % Create Lamp2
            app.Lamp2 = uilamp(app.AnalysisSimulationPanel);
            app.Lamp2.Visible = 'off';
            app.Lamp2.Position = [151 230 20 20];

            % Create Lamp_5Label
            app.Lamp_5Label = uilabel(app.AnalysisSimulationPanel);
            app.Lamp_5Label.HorizontalAlignment = 'right';
            app.Lamp_5Label.Visible = 'off';
            app.Lamp_5Label.Position = [238 240 25 22];
            app.Lamp_5Label.Text = '';

            % Create Lamp6
            app.Lamp6 = uilamp(app.AnalysisSimulationPanel);
            app.Lamp6.Visible = 'off';
            app.Lamp6.Position = [275 226 20 20];

            % Create Lamp_6Label
            app.Lamp_6Label = uilabel(app.AnalysisSimulationPanel);
            app.Lamp_6Label.HorizontalAlignment = 'right';
            app.Lamp_6Label.Visible = 'off';
            app.Lamp_6Label.Position = [238 325 25 22];
            app.Lamp_6Label.Text = '';

            % Create Lamp5
            app.Lamp5 = uilamp(app.AnalysisSimulationPanel);
            app.Lamp5.Visible = 'off';
            app.Lamp5.Position = [275 311 20 20];

            % Create Lamp_7Label
            app.Lamp_7Label = uilabel(app.AnalysisSimulationPanel);
            app.Lamp_7Label.HorizontalAlignment = 'right';
            app.Lamp_7Label.Visible = 'off';
            app.Lamp_7Label.Position = [298 324 25 22];
            app.Lamp_7Label.Text = '';

            % Create Lamp7
            app.Lamp7 = uilamp(app.AnalysisSimulationPanel);
            app.Lamp7.Visible = 'off';
            app.Lamp7.Position = [335 310 20 20];

            % Create Lamp_8Label
            app.Lamp_8Label = uilabel(app.AnalysisSimulationPanel);
            app.Lamp_8Label.HorizontalAlignment = 'right';
            app.Lamp_8Label.Visible = 'off';
            app.Lamp_8Label.Position = [362 408 25 22];
            app.Lamp_8Label.Text = '';

            % Create Lamp8
            app.Lamp8 = uilamp(app.AnalysisSimulationPanel);
            app.Lamp8.Visible = 'off';
            app.Lamp8.Position = [397 401 20 20];

            % Create Lamp_9Label
            app.Lamp_9Label = uilabel(app.AnalysisSimulationPanel);
            app.Lamp_9Label.HorizontalAlignment = 'right';
            app.Lamp_9Label.Visible = 'off';
            app.Lamp_9Label.Position = [365 325 25 22];
            app.Lamp_9Label.Text = '';

            % Create Lamp9
            app.Lamp9 = uilamp(app.AnalysisSimulationPanel);
            app.Lamp9.Visible = 'off';
            app.Lamp9.Position = [402 311 20 20];

            % Create Lamp_10Label
            app.Lamp_10Label = uilabel(app.AnalysisSimulationPanel);
            app.Lamp_10Label.HorizontalAlignment = 'right';
            app.Lamp_10Label.Visible = 'off';
            app.Lamp_10Label.Position = [362 238 25 22];
            app.Lamp_10Label.Text = '';

            % Create Lamp10
            app.Lamp10 = uilamp(app.AnalysisSimulationPanel);
            app.Lamp10.Visible = 'off';
            app.Lamp10.Position = [399 224 20 20];

            % Create Lamp_11Label
            app.Lamp_11Label = uilabel(app.AnalysisSimulationPanel);
            app.Lamp_11Label.HorizontalAlignment = 'right';
            app.Lamp_11Label.Visible = 'off';
            app.Lamp_11Label.Position = [421 346 25 22];
            app.Lamp_11Label.Text = '';

            % Create Lamp11
            app.Lamp11 = uilamp(app.AnalysisSimulationPanel);
            app.Lamp11.Visible = 'off';
            app.Lamp11.Position = [458 332 20 20];

            % Create Lamp_12Label
            app.Lamp_12Label = uilabel(app.AnalysisSimulationPanel);
            app.Lamp_12Label.HorizontalAlignment = 'right';
            app.Lamp_12Label.Visible = 'off';
            app.Lamp_12Label.Position = [497 408 25 22];
            app.Lamp_12Label.Text = '';

            % Create Lamp12
            app.Lamp12 = uilamp(app.AnalysisSimulationPanel);
            app.Lamp12.Visible = 'off';
            app.Lamp12.Position = [532 401 20 20];

            % Create Lamp_13Label
            app.Lamp_13Label = uilabel(app.AnalysisSimulationPanel);
            app.Lamp_13Label.HorizontalAlignment = 'right';
            app.Lamp_13Label.Visible = 'off';
            app.Lamp_13Label.Position = [480 304 25 22];
            app.Lamp_13Label.Text = '';

            % Create Lamp13
            app.Lamp13 = uilamp(app.AnalysisSimulationPanel);
            app.Lamp13.Visible = 'off';
            app.Lamp13.Position = [517 290 20 20];

            % Create Lamp_14Label
            app.Lamp_14Label = uilabel(app.AnalysisSimulationPanel);
            app.Lamp_14Label.HorizontalAlignment = 'right';
            app.Lamp_14Label.Visible = 'off';
            app.Lamp_14Label.Position = [497 241 25 22];
            app.Lamp_14Label.Text = '';

            % Create Lamp14
            app.Lamp14 = uilamp(app.AnalysisSimulationPanel);
            app.Lamp14.Visible = 'off';
            app.Lamp14.Position = [534 227 20 20];

            % Create Lamp_15Label
            app.Lamp_15Label = uilabel(app.AnalysisSimulationPanel);
            app.Lamp_15Label.HorizontalAlignment = 'right';
            app.Lamp_15Label.Visible = 'off';
            app.Lamp_15Label.Position = [556 334 25 22];
            app.Lamp_15Label.Text = '';

            % Create Lamp15
            app.Lamp15 = uilamp(app.AnalysisSimulationPanel);
            app.Lamp15.Visible = 'off';
            app.Lamp15.Position = [593 320 20 20];

            % Create Lamp_16Label
            app.Lamp_16Label = uilabel(app.AnalysisSimulationPanel);
            app.Lamp_16Label.HorizontalAlignment = 'right';
            app.Lamp_16Label.Visible = 'off';
            app.Lamp_16Label.Position = [617 409 25 22];
            app.Lamp_16Label.Text = '';

            % Create Lamp16
            app.Lamp16 = uilamp(app.AnalysisSimulationPanel);
            app.Lamp16.Visible = 'off';
            app.Lamp16.Position = [652 402 20 20];

            % Create Lamp_17Label
            app.Lamp_17Label = uilabel(app.AnalysisSimulationPanel);
            app.Lamp_17Label.HorizontalAlignment = 'right';
            app.Lamp_17Label.Visible = 'off';
            app.Lamp_17Label.Position = [615 305 25 22];
            app.Lamp_17Label.Text = '';

            % Create Lamp17
            app.Lamp17 = uilamp(app.AnalysisSimulationPanel);
            app.Lamp17.Visible = 'off';
            app.Lamp17.Position = [652 291 20 20];

            % Create Lamp_18Label
            app.Lamp_18Label = uilabel(app.AnalysisSimulationPanel);
            app.Lamp_18Label.HorizontalAlignment = 'right';
            app.Lamp_18Label.Visible = 'off';
            app.Lamp_18Label.Position = [620 244 25 22];
            app.Lamp_18Label.Text = '';

            % Create Lamp18
            app.Lamp18 = uilamp(app.AnalysisSimulationPanel);
            app.Lamp18.Visible = 'off';
            app.Lamp18.Position = [657 230 20 20];

            % Create Lamp_19Label
            app.Lamp_19Label = uilabel(app.AnalysisSimulationPanel);
            app.Lamp_19Label.HorizontalAlignment = 'right';
            app.Lamp_19Label.Visible = 'off';
            app.Lamp_19Label.Position = [685 306 25 22];
            app.Lamp_19Label.Text = '';

            % Create Lamp19
            app.Lamp19 = uilamp(app.AnalysisSimulationPanel);
            app.Lamp19.Visible = 'off';
            app.Lamp19.Position = [722 292 20 20];

            % Create Lamp_20Label
            app.Lamp_20Label = uilabel(app.AnalysisSimulationPanel);
            app.Lamp_20Label.HorizontalAlignment = 'right';
            app.Lamp_20Label.Visible = 'off';
            app.Lamp_20Label.Position = [744 324 25 22];
            app.Lamp_20Label.Text = '';

            % Create Lamp20
            app.Lamp20 = uilamp(app.AnalysisSimulationPanel);
            app.Lamp20.Visible = 'off';
            app.Lamp20.Position = [781 310 20 20];

            % Create Lamp_21Label
            app.Lamp_21Label = uilabel(app.AnalysisSimulationPanel);
            app.Lamp_21Label.HorizontalAlignment = 'right';
            app.Lamp_21Label.Visible = 'off';
            app.Lamp_21Label.Position = [744 245 25 22];
            app.Lamp_21Label.Text = '';

            % Create Lamp21
            app.Lamp21 = uilamp(app.AnalysisSimulationPanel);
            app.Lamp21.Visible = 'off';
            app.Lamp21.Position = [781 231 20 20];

            % Create WholeBridgeCapabilityLabel
            app.WholeBridgeCapabilityLabel = uilabel(app.AnalysisSimulationPanel);
            app.WholeBridgeCapabilityLabel.HorizontalAlignment = 'center';
            app.WholeBridgeCapabilityLabel.FontSize = 14;
            app.WholeBridgeCapabilityLabel.FontWeight = 'bold';
            app.WholeBridgeCapabilityLabel.Position = [845 329 95 34];
            app.WholeBridgeCapabilityLabel.Text = {'Whole Bridge'; 'Capability'};

            % Create WholeBridgeCapabilityGauge
            app.WholeBridgeCapabilityGauge = uigauge(app.AnalysisSimulationPanel, 'ninetydegree');
            app.WholeBridgeCapabilityGauge.Position = [847 366 90 90];

            % Create RX1NTextAreaLabel
            app.RX1NTextAreaLabel = uilabel(app.AnalysisSimulationPanel);
            app.RX1NTextAreaLabel.HorizontalAlignment = 'center';
            app.RX1NTextAreaLabel.FontSize = 18;
            app.RX1NTextAreaLabel.FontWeight = 'bold';
            app.RX1NTextAreaLabel.Position = [964 348 69 24];
            app.RX1NTextAreaLabel.Text = 'RX1 (N)';

            % Create RX1NTextArea
            app.RX1NTextArea = uitextarea(app.AnalysisSimulationPanel);
            app.RX1NTextArea.Editable = 'off';
            app.RX1NTextArea.HorizontalAlignment = 'center';
            app.RX1NTextArea.FontSize = 18;
            app.RX1NTextArea.FontWeight = 'bold';
            app.RX1NTextArea.Position = [1041 343 69 25];

            % Create RY1NTextAreaLabel
            app.RY1NTextAreaLabel = uilabel(app.AnalysisSimulationPanel);
            app.RY1NTextAreaLabel.HorizontalAlignment = 'right';
            app.RY1NTextAreaLabel.FontSize = 18;
            app.RY1NTextAreaLabel.FontWeight = 'bold';
            app.RY1NTextAreaLabel.Position = [961 306 68 24];
            app.RY1NTextAreaLabel.Text = 'RY1 (N)';

            % Create RY1NTextArea
            app.RY1NTextArea = uitextarea(app.AnalysisSimulationPanel);
            app.RY1NTextArea.HorizontalAlignment = 'center';
            app.RY1NTextArea.FontSize = 18;
            app.RY1NTextArea.FontWeight = 'bold';
            app.RY1NTextArea.Position = [1041 303 69 24];

            % Create F1NLabel
            app.F1NLabel = uilabel(app.AnalysisSimulationPanel);
            app.F1NLabel.HorizontalAlignment = 'center';
            app.F1NLabel.FontSize = 14;
            app.F1NLabel.FontWeight = 'bold';
            app.F1NLabel.Position = [11 79 52 22];
            app.F1NLabel.Text = '  F1 (N)';

            % Create F1NTextArea
            app.F1NTextArea = uitextarea(app.AnalysisSimulationPanel);
            app.F1NTextArea.Editable = 'off';
            app.F1NTextArea.HorizontalAlignment = 'center';
            app.F1NTextArea.FontSize = 14;
            app.F1NTextArea.FontWeight = 'bold';
            app.F1NTextArea.Position = [66 81 66 25];

            % Create F2NLabel
            app.F2NLabel = uilabel(app.AnalysisSimulationPanel);
            app.F2NLabel.HorizontalAlignment = 'center';
            app.F2NLabel.FontSize = 14;
            app.F2NLabel.FontWeight = 'bold';
            app.F2NLabel.Position = [16 46 49 22];
            app.F2NLabel.Text = 'F2 (N)';

            % Create F2NTextArea
            app.F2NTextArea = uitextarea(app.AnalysisSimulationPanel);
            app.F2NTextArea.Editable = 'off';
            app.F2NTextArea.HorizontalAlignment = 'center';
            app.F2NTextArea.FontSize = 14;
            app.F2NTextArea.FontWeight = 'bold';
            app.F2NTextArea.Position = [66 48 67 25];

            % Create F3NTextAreaLabel
            app.F3NTextAreaLabel = uilabel(app.AnalysisSimulationPanel);
            app.F3NTextAreaLabel.HorizontalAlignment = 'center';
            app.F3NTextAreaLabel.FontSize = 14;
            app.F3NTextAreaLabel.FontWeight = 'bold';
            app.F3NTextAreaLabel.Position = [16 12 45 22];
            app.F3NTextAreaLabel.Text = 'F3 (N)';

            % Create F3NTextArea
            app.F3NTextArea = uitextarea(app.AnalysisSimulationPanel);
            app.F3NTextArea.Editable = 'off';
            app.F3NTextArea.HorizontalAlignment = 'center';
            app.F3NTextArea.FontSize = 14;
            app.F3NTextArea.FontWeight = 'bold';
            app.F3NTextArea.Position = [66 14 68 25];

            % Create F4NTextAreaLabel
            app.F4NTextAreaLabel = uilabel(app.AnalysisSimulationPanel);
            app.F4NTextAreaLabel.HorizontalAlignment = 'center';
            app.F4NTextAreaLabel.FontSize = 14;
            app.F4NTextAreaLabel.FontWeight = 'bold';
            app.F4NTextAreaLabel.Position = [138 81 45 22];
            app.F4NTextAreaLabel.Text = 'F4 (N)';

            % Create F4NTextArea
            app.F4NTextArea = uitextarea(app.AnalysisSimulationPanel);
            app.F4NTextArea.Editable = 'off';
            app.F4NTextArea.HorizontalAlignment = 'center';
            app.F4NTextArea.FontSize = 14;
            app.F4NTextArea.FontWeight = 'bold';
            app.F4NTextArea.Position = [190 80 66 25];

            % Create F5NTextAreaLabel
            app.F5NTextAreaLabel = uilabel(app.AnalysisSimulationPanel);
            app.F5NTextAreaLabel.HorizontalAlignment = 'center';
            app.F5NTextAreaLabel.FontSize = 14;
            app.F5NTextAreaLabel.FontWeight = 'bold';
            app.F5NTextAreaLabel.Position = [138 46 45 22];
            app.F5NTextAreaLabel.Text = 'F5 (N)';

            % Create F5NTextArea
            app.F5NTextArea = uitextarea(app.AnalysisSimulationPanel);
            app.F5NTextArea.Editable = 'off';
            app.F5NTextArea.HorizontalAlignment = 'center';
            app.F5NTextArea.FontSize = 14;
            app.F5NTextArea.FontWeight = 'bold';
            app.F5NTextArea.Position = [190 45 66 25];

            % Create F6NTextAreaLabel
            app.F6NTextAreaLabel = uilabel(app.AnalysisSimulationPanel);
            app.F6NTextAreaLabel.HorizontalAlignment = 'center';
            app.F6NTextAreaLabel.FontSize = 14;
            app.F6NTextAreaLabel.FontWeight = 'bold';
            app.F6NTextAreaLabel.Position = [138 15 45 22];
            app.F6NTextAreaLabel.Text = 'F6 (N)';

            % Create F6NTextArea
            app.F6NTextArea = uitextarea(app.AnalysisSimulationPanel);
            app.F6NTextArea.Editable = 'off';
            app.F6NTextArea.HorizontalAlignment = 'center';
            app.F6NTextArea.FontSize = 14;
            app.F6NTextArea.FontWeight = 'bold';
            app.F6NTextArea.Position = [190 14 66 25];

            % Create F7NTextAreaLabel
            app.F7NTextAreaLabel = uilabel(app.AnalysisSimulationPanel);
            app.F7NTextAreaLabel.HorizontalAlignment = 'center';
            app.F7NTextAreaLabel.FontSize = 14;
            app.F7NTextAreaLabel.FontWeight = 'bold';
            app.F7NTextAreaLabel.Position = [261 78 45 22];
            app.F7NTextAreaLabel.Text = 'F7 (N)';

            % Create F7NTextArea
            app.F7NTextArea = uitextarea(app.AnalysisSimulationPanel);
            app.F7NTextArea.Editable = 'off';
            app.F7NTextArea.HorizontalAlignment = 'center';
            app.F7NTextArea.FontSize = 14;
            app.F7NTextArea.FontWeight = 'bold';
            app.F7NTextArea.Position = [313 77 66 25];

            % Create F8NTextAreaLabel
            app.F8NTextAreaLabel = uilabel(app.AnalysisSimulationPanel);
            app.F8NTextAreaLabel.HorizontalAlignment = 'center';
            app.F8NTextAreaLabel.FontSize = 14;
            app.F8NTextAreaLabel.FontWeight = 'bold';
            app.F8NTextAreaLabel.Position = [261 48 45 22];
            app.F8NTextAreaLabel.Text = 'F8 (N)';

            % Create F8NTextArea
            app.F8NTextArea = uitextarea(app.AnalysisSimulationPanel);
            app.F8NTextArea.Editable = 'off';
            app.F8NTextArea.HorizontalAlignment = 'center';
            app.F8NTextArea.FontSize = 14;
            app.F8NTextArea.FontWeight = 'bold';
            app.F8NTextArea.Position = [313 47 66 25];

            % Create F9NTextAreaLabel
            app.F9NTextAreaLabel = uilabel(app.AnalysisSimulationPanel);
            app.F9NTextAreaLabel.HorizontalAlignment = 'center';
            app.F9NTextAreaLabel.FontSize = 14;
            app.F9NTextAreaLabel.FontWeight = 'bold';
            app.F9NTextAreaLabel.Position = [261 14 45 22];
            app.F9NTextAreaLabel.Text = 'F9 (N)';

            % Create F9NTextArea
            app.F9NTextArea = uitextarea(app.AnalysisSimulationPanel);
            app.F9NTextArea.Editable = 'off';
            app.F9NTextArea.HorizontalAlignment = 'center';
            app.F9NTextArea.FontSize = 14;
            app.F9NTextArea.FontWeight = 'bold';
            app.F9NTextArea.Position = [313 13 66 25];

            % Create F10NTextAreaLabel
            app.F10NTextAreaLabel = uilabel(app.AnalysisSimulationPanel);
            app.F10NTextAreaLabel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.F10NTextAreaLabel.HorizontalAlignment = 'center';
            app.F10NTextAreaLabel.FontSize = 14;
            app.F10NTextAreaLabel.FontWeight = 'bold';
            app.F10NTextAreaLabel.Position = [394 78 52 22];
            app.F10NTextAreaLabel.Text = 'F10 (N)';

            % Create F10NTextArea
            app.F10NTextArea = uitextarea(app.AnalysisSimulationPanel);
            app.F10NTextArea.Editable = 'off';
            app.F10NTextArea.HorizontalAlignment = 'center';
            app.F10NTextArea.FontSize = 14;
            app.F10NTextArea.FontWeight = 'bold';
            app.F10NTextArea.Position = [450 77 66 25];

            % Create F11NTextAreaLabel
            app.F11NTextAreaLabel = uilabel(app.AnalysisSimulationPanel);
            app.F11NTextAreaLabel.HorizontalAlignment = 'center';
            app.F11NTextAreaLabel.FontSize = 14;
            app.F11NTextAreaLabel.FontWeight = 'bold';
            app.F11NTextAreaLabel.Position = [395 47 52 22];
            app.F11NTextAreaLabel.Text = 'F11 (N)';

            % Create F11NTextArea
            app.F11NTextArea = uitextarea(app.AnalysisSimulationPanel);
            app.F11NTextArea.Editable = 'off';
            app.F11NTextArea.HorizontalAlignment = 'center';
            app.F11NTextArea.FontSize = 14;
            app.F11NTextArea.FontWeight = 'bold';
            app.F11NTextArea.Position = [450 46 66 25];

            % Create F12NTextAreaLabel
            app.F12NTextAreaLabel = uilabel(app.AnalysisSimulationPanel);
            app.F12NTextAreaLabel.HorizontalAlignment = 'center';
            app.F12NTextAreaLabel.FontSize = 14;
            app.F12NTextAreaLabel.FontWeight = 'bold';
            app.F12NTextAreaLabel.Position = [394 17 52 22];
            app.F12NTextAreaLabel.Text = 'F12 (N)';

            % Create F12NTextArea
            app.F12NTextArea = uitextarea(app.AnalysisSimulationPanel);
            app.F12NTextArea.Editable = 'off';
            app.F12NTextArea.HorizontalAlignment = 'center';
            app.F12NTextArea.FontSize = 14;
            app.F12NTextArea.FontWeight = 'bold';
            app.F12NTextArea.Position = [450 16 66 25];

            % Create F13NTextAreaLabel
            app.F13NTextAreaLabel = uilabel(app.AnalysisSimulationPanel);
            app.F13NTextAreaLabel.HorizontalAlignment = 'center';
            app.F13NTextAreaLabel.FontSize = 14;
            app.F13NTextAreaLabel.FontWeight = 'bold';
            app.F13NTextAreaLabel.Position = [538 79 52 22];
            app.F13NTextAreaLabel.Text = 'F13 (N)';

            % Create F13NTextArea
            app.F13NTextArea = uitextarea(app.AnalysisSimulationPanel);
            app.F13NTextArea.Editable = 'off';
            app.F13NTextArea.HorizontalAlignment = 'center';
            app.F13NTextArea.FontSize = 14;
            app.F13NTextArea.FontWeight = 'bold';
            app.F13NTextArea.Position = [594 78 66 25];

            % Create F14NTextAreaLabel
            app.F14NTextAreaLabel = uilabel(app.AnalysisSimulationPanel);
            app.F14NTextAreaLabel.HorizontalAlignment = 'center';
            app.F14NTextAreaLabel.FontSize = 14;
            app.F14NTextAreaLabel.FontWeight = 'bold';
            app.F14NTextAreaLabel.Position = [539 48 52 22];
            app.F14NTextAreaLabel.Text = 'F14 (N)';

            % Create F14NTextArea
            app.F14NTextArea = uitextarea(app.AnalysisSimulationPanel);
            app.F14NTextArea.Editable = 'off';
            app.F14NTextArea.HorizontalAlignment = 'center';
            app.F14NTextArea.FontSize = 14;
            app.F14NTextArea.FontWeight = 'bold';
            app.F14NTextArea.Position = [594 47 66 25];

            % Create F15NTextAreaLabel
            app.F15NTextAreaLabel = uilabel(app.AnalysisSimulationPanel);
            app.F15NTextAreaLabel.HorizontalAlignment = 'center';
            app.F15NTextAreaLabel.FontSize = 14;
            app.F15NTextAreaLabel.FontWeight = 'bold';
            app.F15NTextAreaLabel.Position = [538 15 52 22];
            app.F15NTextAreaLabel.Text = 'F15 (N)';

            % Create F15NTextArea
            app.F15NTextArea = uitextarea(app.AnalysisSimulationPanel);
            app.F15NTextArea.Editable = 'off';
            app.F15NTextArea.HorizontalAlignment = 'center';
            app.F15NTextArea.FontSize = 14;
            app.F15NTextArea.FontWeight = 'bold';
            app.F15NTextArea.Position = [594 14 66 25];

            % Create F16NTextAreaLabel
            app.F16NTextAreaLabel = uilabel(app.AnalysisSimulationPanel);
            app.F16NTextAreaLabel.HorizontalAlignment = 'center';
            app.F16NTextAreaLabel.FontSize = 14;
            app.F16NTextAreaLabel.FontWeight = 'bold';
            app.F16NTextAreaLabel.Position = [679 79 52 22];
            app.F16NTextAreaLabel.Text = 'F16 (N)';

            % Create F16NTextArea
            app.F16NTextArea = uitextarea(app.AnalysisSimulationPanel);
            app.F16NTextArea.Editable = 'off';
            app.F16NTextArea.HorizontalAlignment = 'center';
            app.F16NTextArea.FontSize = 14;
            app.F16NTextArea.FontWeight = 'bold';
            app.F16NTextArea.Position = [735 78 66 25];

            % Create F17NTextAreaLabel
            app.F17NTextAreaLabel = uilabel(app.AnalysisSimulationPanel);
            app.F17NTextAreaLabel.HorizontalAlignment = 'center';
            app.F17NTextAreaLabel.FontSize = 14;
            app.F17NTextAreaLabel.FontWeight = 'bold';
            app.F17NTextAreaLabel.Position = [679 48 52 22];
            app.F17NTextAreaLabel.Text = 'F17 (N)';

            % Create F17NTextArea
            app.F17NTextArea = uitextarea(app.AnalysisSimulationPanel);
            app.F17NTextArea.Editable = 'off';
            app.F17NTextArea.HorizontalAlignment = 'center';
            app.F17NTextArea.FontSize = 14;
            app.F17NTextArea.FontWeight = 'bold';
            app.F17NTextArea.Position = [735 47 66 25];

            % Create F18NTextAreaLabel
            app.F18NTextAreaLabel = uilabel(app.AnalysisSimulationPanel);
            app.F18NTextAreaLabel.HorizontalAlignment = 'center';
            app.F18NTextAreaLabel.FontSize = 14;
            app.F18NTextAreaLabel.FontWeight = 'bold';
            app.F18NTextAreaLabel.Position = [679 16 52 22];
            app.F18NTextAreaLabel.Text = 'F18 (N)';

            % Create F18NTextArea
            app.F18NTextArea = uitextarea(app.AnalysisSimulationPanel);
            app.F18NTextArea.Editable = 'off';
            app.F18NTextArea.HorizontalAlignment = 'center';
            app.F18NTextArea.FontSize = 14;
            app.F18NTextArea.FontWeight = 'bold';
            app.F18NTextArea.Position = [735 15 66 25];

            % Create F19NTextAreaLabel
            app.F19NTextAreaLabel = uilabel(app.AnalysisSimulationPanel);
            app.F19NTextAreaLabel.HorizontalAlignment = 'center';
            app.F19NTextAreaLabel.FontSize = 14;
            app.F19NTextAreaLabel.FontWeight = 'bold';
            app.F19NTextAreaLabel.Position = [816 78 52 22];
            app.F19NTextAreaLabel.Text = 'F19 (N)';

            % Create F19NTextArea
            app.F19NTextArea = uitextarea(app.AnalysisSimulationPanel);
            app.F19NTextArea.Editable = 'off';
            app.F19NTextArea.HorizontalAlignment = 'center';
            app.F19NTextArea.FontSize = 14;
            app.F19NTextArea.FontWeight = 'bold';
            app.F19NTextArea.Position = [872 77 66 25];

            % Create F20NTextAreaLabel
            app.F20NTextAreaLabel = uilabel(app.AnalysisSimulationPanel);
            app.F20NTextAreaLabel.HorizontalAlignment = 'center';
            app.F20NTextAreaLabel.FontSize = 14;
            app.F20NTextAreaLabel.FontWeight = 'bold';
            app.F20NTextAreaLabel.Position = [816 48 52 22];
            app.F20NTextAreaLabel.Text = 'F20 (N)';

            % Create F20NTextArea
            app.F20NTextArea = uitextarea(app.AnalysisSimulationPanel);
            app.F20NTextArea.Editable = 'off';
            app.F20NTextArea.HorizontalAlignment = 'center';
            app.F20NTextArea.FontSize = 14;
            app.F20NTextArea.FontWeight = 'bold';
            app.F20NTextArea.Position = [872 47 66 25];

            % Create F21NTextAreaLabel
            app.F21NTextAreaLabel = uilabel(app.AnalysisSimulationPanel);
            app.F21NTextAreaLabel.HorizontalAlignment = 'center';
            app.F21NTextAreaLabel.FontSize = 14;
            app.F21NTextAreaLabel.FontWeight = 'bold';
            app.F21NTextAreaLabel.Position = [816 18 52 22];
            app.F21NTextAreaLabel.Text = 'F21 (N)';

            % Create F21NTextArea
            app.F21NTextArea = uitextarea(app.AnalysisSimulationPanel);
            app.F21NTextArea.Editable = 'off';
            app.F21NTextArea.HorizontalAlignment = 'center';
            app.F21NTextArea.FontSize = 14;
            app.F21NTextArea.FontWeight = 'bold';
            app.F21NTextArea.Position = [872 17 66 25];

            % Create RX2NTextAreaLabel
            app.RX2NTextAreaLabel = uilabel(app.AnalysisSimulationPanel);
            app.RX2NTextAreaLabel.HorizontalAlignment = 'center';
            app.RX2NTextAreaLabel.FontSize = 18;
            app.RX2NTextAreaLabel.FontWeight = 'bold';
            app.RX2NTextAreaLabel.Position = [961 266 69 24];
            app.RX2NTextAreaLabel.Text = 'RX2 (N)';

            % Create RX2NTextArea
            app.RX2NTextArea = uitextarea(app.AnalysisSimulationPanel);
            app.RX2NTextArea.Editable = 'off';
            app.RX2NTextArea.HorizontalAlignment = 'center';
            app.RX2NTextArea.FontSize = 18;
            app.RX2NTextArea.FontWeight = 'bold';
            app.RX2NTextArea.Position = [1042 261 69 25];

            % Create RY2NTextAreaLabel
            app.RY2NTextAreaLabel = uilabel(app.AnalysisSimulationPanel);
            app.RY2NTextAreaLabel.HorizontalAlignment = 'center';
            app.RY2NTextAreaLabel.FontSize = 18;
            app.RY2NTextAreaLabel.FontWeight = 'bold';
            app.RY2NTextAreaLabel.Position = [961 227 68 24];
            app.RY2NTextAreaLabel.Text = 'RY2 (N)';

            % Create RY2NTextArea
            app.RY2NTextArea = uitextarea(app.AnalysisSimulationPanel);
            app.RY2NTextArea.Editable = 'off';
            app.RY2NTextArea.HorizontalAlignment = 'center';
            app.RY2NTextArea.FontSize = 18;
            app.RY2NTextArea.FontWeight = 'bold';
            app.RY2NTextArea.Position = [1040 226 72 25];

            % Create W5NTextAreaLabel
            app.W5NTextAreaLabel = uilabel(app.AnalysisSimulationPanel);
            app.W5NTextAreaLabel.HorizontalAlignment = 'center';
            app.W5NTextAreaLabel.FontSize = 18;
            app.W5NTextAreaLabel.FontWeight = 'bold';
            app.W5NTextAreaLabel.Position = [961 21 61 24];
            app.W5NTextAreaLabel.Text = 'W5 (N)';

            % Create W5NTextArea
            app.W5NTextArea = uitextarea(app.AnalysisSimulationPanel);
            app.W5NTextArea.Editable = 'off';
            app.W5NTextArea.HorizontalAlignment = 'center';
            app.W5NTextArea.FontSize = 18;
            app.W5NTextArea.FontWeight = 'bold';
            app.W5NTextArea.Position = [1041 22 66 25];

            % Create W4NTextAreaLabel
            app.W4NTextAreaLabel = uilabel(app.AnalysisSimulationPanel);
            app.W4NTextAreaLabel.HorizontalAlignment = 'center';
            app.W4NTextAreaLabel.FontSize = 18;
            app.W4NTextAreaLabel.FontWeight = 'bold';
            app.W4NTextAreaLabel.Position = [961 54 61 24];
            app.W4NTextAreaLabel.Text = 'W4 (N)';

            % Create W4NTextArea
            app.W4NTextArea = uitextarea(app.AnalysisSimulationPanel);
            app.W4NTextArea.Editable = 'off';
            app.W4NTextArea.HorizontalAlignment = 'center';
            app.W4NTextArea.FontSize = 18;
            app.W4NTextArea.FontWeight = 'bold';
            app.W4NTextArea.Position = [1041 54 66 25];

            % Create W3NTextAreaLabel
            app.W3NTextAreaLabel = uilabel(app.AnalysisSimulationPanel);
            app.W3NTextAreaLabel.HorizontalAlignment = 'center';
            app.W3NTextAreaLabel.FontSize = 18;
            app.W3NTextAreaLabel.FontWeight = 'bold';
            app.W3NTextAreaLabel.Position = [961 88 61 24];
            app.W3NTextAreaLabel.Text = 'W3 (N)';

            % Create W3NTextArea
            app.W3NTextArea = uitextarea(app.AnalysisSimulationPanel);
            app.W3NTextArea.Editable = 'off';
            app.W3NTextArea.HorizontalAlignment = 'center';
            app.W3NTextArea.FontSize = 18;
            app.W3NTextArea.FontWeight = 'bold';
            app.W3NTextArea.Position = [1041 87 66 25];

            % Create W2NTextAreaLabel
            app.W2NTextAreaLabel = uilabel(app.AnalysisSimulationPanel);
            app.W2NTextAreaLabel.HorizontalAlignment = 'center';
            app.W2NTextAreaLabel.FontSize = 18;
            app.W2NTextAreaLabel.FontWeight = 'bold';
            app.W2NTextAreaLabel.Position = [961 124 61 24];
            app.W2NTextAreaLabel.Text = 'W2 (N)';

            % Create W2NTextArea
            app.W2NTextArea = uitextarea(app.AnalysisSimulationPanel);
            app.W2NTextArea.Editable = 'off';
            app.W2NTextArea.HorizontalAlignment = 'center';
            app.W2NTextArea.FontSize = 18;
            app.W2NTextArea.FontWeight = 'bold';
            app.W2NTextArea.Position = [1042 124 66 25];

            % Create W1NTextAreaLabel
            app.W1NTextAreaLabel = uilabel(app.AnalysisSimulationPanel);
            app.W1NTextAreaLabel.HorizontalAlignment = 'center';
            app.W1NTextAreaLabel.FontSize = 18;
            app.W1NTextAreaLabel.FontWeight = 'bold';
            app.W1NTextAreaLabel.Position = [961 158 61 24];
            app.W1NTextAreaLabel.Text = 'W1 (N)';

            % Create W1NTextArea
            app.W1NTextArea = uitextarea(app.AnalysisSimulationPanel);
            app.W1NTextArea.Editable = 'off';
            app.W1NTextArea.HorizontalAlignment = 'center';
            app.W1NTextArea.FontSize = 18;
            app.W1NTextArea.FontWeight = 'bold';
            app.W1NTextArea.Position = [1042 155 66 25];

            % Create SafeMembersLampLabel
            app.SafeMembersLampLabel = uilabel(app.AnalysisSimulationPanel);
            app.SafeMembersLampLabel.HorizontalAlignment = 'right';
            app.SafeMembersLampLabel.FontSize = 18;
            app.SafeMembersLampLabel.FontWeight = 'bold';
            app.SafeMembersLampLabel.Position = [39 123 127 23];
            app.SafeMembersLampLabel.Text = 'Safe Members';

            % Create SafeMembersLamp
            app.SafeMembersLamp = uilamp(app.AnalysisSimulationPanel);
            app.SafeMembersLamp.Position = [20 124 20 20];

            % Create MembersundergoingGreaterthan80BreakingLoadLabel
            app.MembersundergoingGreaterthan80BreakingLoadLabel = uilabel(app.AnalysisSimulationPanel);
            app.MembersundergoingGreaterthan80BreakingLoadLabel.FontSize = 14;
            app.MembersundergoingGreaterthan80BreakingLoadLabel.FontWeight = 'bold';
            app.MembersundergoingGreaterthan80BreakingLoadLabel.Position = [233 115 460 34];
            app.MembersundergoingGreaterthan80BreakingLoadLabel.Text = {'Members undergoing Greater than'; '80% Theoretical Breaking Load'};

            % Create MembersundergoingGreaterthan80TheoreticalBreakingLoadLamp
            app.MembersundergoingGreaterthan80TheoreticalBreakingLoadLamp = uilamp(app.AnalysisSimulationPanel);
            app.MembersundergoingGreaterthan80TheoreticalBreakingLoadLamp.Position = [203 120 20 20];
            app.MembersundergoingGreaterthan80TheoreticalBreakingLoadLamp.Color = [1 1 0];

            % Create BrokenMembersLampLabel
            app.BrokenMembersLampLabel = uilabel(app.AnalysisSimulationPanel);
            app.BrokenMembersLampLabel.HorizontalAlignment = 'right';
            app.BrokenMembersLampLabel.FontSize = 18;
            app.BrokenMembersLampLabel.FontWeight = 'bold';
            app.BrokenMembersLampLabel.Position = [516 120 151 23];
            app.BrokenMembersLampLabel.Text = 'Broken Members';

            % Create BrokenMembersLamp
            app.BrokenMembersLamp = uilamp(app.AnalysisSimulationPanel);
            app.BrokenMembersLamp.Position = [497 121 20 20];
            app.BrokenMembersLamp.Color = [1 0 0];

            % Create AngelLabel_2
            app.AngelLabel_2 = uilabel(app.AnalysisSimulationPanel);
            app.AngelLabel_2.HorizontalAlignment = 'right';
            app.AngelLabel_2.FontSize = 18;
            app.AngelLabel_2.FontWeight = 'bold';
            app.AngelLabel_2.Position = [959 381 77 24];
            app.AngelLabel_2.Text = 'Angle θ°';

            % Create AngleEditField
            app.AngleEditField = uieditfield(app.AnalysisSimulationPanel, 'numeric');
            app.AngleEditField.AllowEmpty = 'on';
            app.AngleEditField.Editable = 'off';
            app.AngleEditField.HorizontalAlignment = 'center';
            app.AngleEditField.FontSize = 18;
            app.AngleEditField.FontWeight = 'bold';
            app.AngleEditField.Position = [1041 380 70 31];
            app.AngleEditField.Value = [];

            % Create PositiveMembersTensionNegativeMembersCompresionLabel
            app.PositiveMembersTensionNegativeMembersCompresionLabel = uilabel(app.AnalysisSimulationPanel);
            app.PositiveMembersTensionNegativeMembersCompresionLabel.FontSize = 14;
            app.PositiveMembersTensionNegativeMembersCompresionLabel.FontWeight = 'bold';
            app.PositiveMembersTensionNegativeMembersCompresionLabel.FontColor = [0.502 0.502 0.502];
            app.PositiveMembersTensionNegativeMembersCompresionLabel.Position = [702 112 230 34];
            app.PositiveMembersTensionNegativeMembersCompresionLabel.Text = {' Positive Members: Tension, '; 'Negative Members: Compresion. '};

            % Create TotalCapabilityLabel
            app.TotalCapabilityLabel = uilabel(app.AnalysisSimulationPanel);
            app.TotalCapabilityLabel.HorizontalAlignment = 'right';
            app.TotalCapabilityLabel.FontSize = 16;
            app.TotalCapabilityLabel.FontWeight = 'bold';
            app.TotalCapabilityLabel.Position = [942 416 81 39];
            app.TotalCapabilityLabel.Text = {'% Total '; 'Capability'};

            % Create TotalCapabilityEditField
            app.TotalCapabilityEditField = uieditfield(app.AnalysisSimulationPanel, 'numeric');
            app.TotalCapabilityEditField.AllowEmpty = 'on';
            app.TotalCapabilityEditField.Editable = 'off';
            app.TotalCapabilityEditField.HorizontalAlignment = 'center';
            app.TotalCapabilityEditField.FontSize = 16;
            app.TotalCapabilityEditField.FontWeight = 'bold';
            app.TotalCapabilityEditField.Position = [1040 417 71 38];
            app.TotalCapabilityEditField.Value = [];

            % Create PositiveNegativeofRXRYSeeonNorthwestCoordinateLabel
            app.PositiveNegativeofRXRYSeeonNorthwestCoordinateLabel = uilabel(app.AnalysisSimulationPanel);
            app.PositiveNegativeofRXRYSeeonNorthwestCoordinateLabel.FontSize = 14;
            app.PositiveNegativeofRXRYSeeonNorthwestCoordinateLabel.FontColor = [0.502 0.502 0.502];
            app.PositiveNegativeofRXRYSeeonNorthwestCoordinateLabel.Position = [949 184 195 34];
            app.PositiveNegativeofRXRYSeeonNorthwestCoordinateLabel.Text = {'Positive / Negative of RX&RY: '; 'See on Northwest Coordinate.'};

            % Create ReadMEPanel
            app.ReadMEPanel = uipanel(app.UIFigure);
            app.ReadMEPanel.Title = ' Read ME';
            app.ReadMEPanel.FontWeight = 'bold';
            app.ReadMEPanel.FontSize = 24;
            app.ReadMEPanel.Position = [21 715 1140 186];

            % Create Mode1CalculateforaSpecificInputLoadLabel
            app.Mode1CalculateforaSpecificInputLoadLabel = uilabel(app.ReadMEPanel);
            app.Mode1CalculateforaSpecificInputLoadLabel.BackgroundColor = [1 1 0];
            app.Mode1CalculateforaSpecificInputLoadLabel.FontSize = 18;
            app.Mode1CalculateforaSpecificInputLoadLabel.Position = [4 111 365 24];
            app.Mode1CalculateforaSpecificInputLoadLabel.Text = 'Mode 1 : Calculate for a Specific Input Load';

            % Create Label_3
            app.Label_3 = uilabel(app.ReadMEPanel);
            app.Label_3.FontSize = 16;
            app.Label_3.FontWeight = 'bold';
            app.Label_3.Position = [4 31 481 79];
            app.Label_3.Text = {'· Enter a total load value in the Total Load Applied Wnet field.'; '· Click the CALCULATE button.'; '· Observe the calculated force values, breaking loads, and the '; '  status indicator colors on the bridge diagram.'};

            % Create Mode2SimulatetoFindMaximumLoadLabel
            app.Mode2SimulatetoFindMaximumLoadLabel = uilabel(app.ReadMEPanel);
            app.Mode2SimulatetoFindMaximumLoadLabel.BackgroundColor = [1 1 0];
            app.Mode2SimulatetoFindMaximumLoadLabel.FontSize = 18;
            app.Mode2SimulatetoFindMaximumLoadLabel.Position = [487 111 347 24];
            app.Mode2SimulatetoFindMaximumLoadLabel.Text = 'Mode 2 : Simulate to Find Maximum Load';

            % Create Label_4
            app.Label_4 = uilabel(app.ReadMEPanel);
            app.Label_4.FontSize = 16;
            app.Label_4.FontWeight = 'bold';
            app.Label_4.Position = [482 6 670 103];
            app.Label_4.Text = {'· Click the SIMULATE button and Watch the value of the Wnet increase automatically. '; '· The gauge and indicators will update in real-time.'; '· When the simulation stops automatically, the final value displayed in Total Load '; '  Applied Wnet is the predicted MAX load capacity of the bridge.'; '· During the simulation, clicking the STOP at any time can interrupt the process early.'};

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = Group4_Programme_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end