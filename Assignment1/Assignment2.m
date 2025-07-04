% Define transfer functions for both systems
% System 1: G1(s) = 12/(s^2 + 8s + 12)
num1 = 12;
den1 = [1 8 12];
G1 = tf(num1, den1);

% System 2: G2(s) = 116/(s^2 + 8s + 116)
num2 = 116;
den2 = [1 8 116];
G2 = tf(num2, den2);

% Create time vector for plotting
t = 0:0.01:5;  % 5 seconds with 0.01 step size

% Calculate step responses
[y1, t1] = step(G1, t);
[y2, t2] = step(G2, t);

% Create the plot
figure;
plot(t1, y1, 'b-', 'LineWidth', 2);
hold on;
plot(t2, y2, 'r--', 'LineWidth', 2);
grid on;

% Add labels and title with your name
xlabel('Time (seconds)');
ylabel('Response y(t)');
title('Step Response Comparison - [WANASINGHE J.K. E/20/420]');  % Replace [Your Name] with your actual name
legend('System 1: G_1(s) = 12/(s^2+8s+12)', 'System 2: G_2(s) = 116/(s^2+8s+116)', 'Location', 'best');

% Optional: Display poles and zeros information
fprintf('System 1 Poles: ');
disp(pole(G1));
fprintf('System 1 Zeros: ');
disp(zero(G1));
fprintf('\nSystem 2 Poles: ');
disp(pole(G2));
fprintf('System 2 Zeros: ');
disp(zero(G2));

% Optional: Display final values
fprintf('\nFinal Value System 1: %.4f\n', dcgain(G1));
fprintf('Final Value System 2: %.4f\n', dcgain(G2));
