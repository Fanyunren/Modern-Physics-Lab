% 假设您的数据文件名为data.txt，并且第一行是标题行
% 确保文件路径正确，如果文件不在当前目录，需要提供完整路径
Untitled1 = readtable("分子泵运行过程气压记录.xlsx", opts, "UseExcel", false); % 跳过文件的标题行

% 提取时间和气压数据
time = Untitled1(:, 1);
pressure = Untitled1(:, 2);

% 创建一个新的图形窗口
figure;
plot(time, pressure, 'b-', 'LineWidth', 1.5); % 绘制原始气压数据
hold on; % 保持当前图形，以便在同一图上绘制

% 如果有平滑后的数据，可以在这里绘制
% plot(time, smoothPressure, 'r--', 'LineWidth', 1.5); % 绘制平滑后的气压数据

xlabel('时间 (s)'); % x轴标签
ylabel('气压'); % y轴标签
title('气压随时间变化'); % 图形标题
grid on; % 添加网格
hold off; % 释放图形