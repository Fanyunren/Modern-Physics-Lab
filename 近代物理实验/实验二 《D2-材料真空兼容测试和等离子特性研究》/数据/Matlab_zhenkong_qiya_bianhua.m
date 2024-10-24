data = csvread('Untitled1', 1, 0); % 跳过文件的标题行
time = data(:, 1);
pressure = data(:, 2);

figure; % 创建一个新的图形窗口
plot(time, pressure, 'b-', 'LineWidth', 1.5); % 绘制原始气压数据
hold on; % 保持当前图形，以便在同一图上绘制
plot(time, smoothPressure, 'r--', 'LineWidth', 1.5); % 绘制平滑后的气压数据
legend('原始数据', '平滑数据'); % 添加图例
xlabel('时间 (s)'); % x轴标签
ylabel('气压'); % y轴标签
title('气压随时间变化'); % 图形标题
grid on; % 添加网格
hold off; % 释放图形
