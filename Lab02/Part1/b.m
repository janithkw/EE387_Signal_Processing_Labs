% --------- First Signal: cos(2*pi*t/12) ---------
T = 5;                  % Sampling period in seconds for discrete signals
n = 0:T:200;            % Discrete time indices
x_n = cos(2 * pi * n / 12); % Discrete signal

fs_c = 1000;            % Sampling frequency for continuous signal (Hz)
t_c = 0:1/fs_c:200;     % Continuous time vector
x_c = cos(2 * pi * t_c / 12); % Continuous signal

figure(1);
plot(t_c, x_c, '-w');   % Plot continuous signal in black
hold on;
stem(n, x_n, 'filled'); % Overlay discrete samples
hold off;
title('cos(2\pi t/12)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
xlim([0 200]);          % Set x-axis limits
ylim([-1.2 1.2]);       % Set y-axis limits

% --------- Second Signal: cos(8*pi*t/31) ---------
T = 5;                  % Sampling period in seconds for discrete signals
n = 0:T:200;            % Discrete time indices
x_n = cos(8 * pi * n / 31); % Discrete signal

fs_c = 1000;            % Sampling frequency for continuous signal (Hz)
t_c = 0:1/fs_c:200;     % Continuous time vector
x_c = cos(8 * pi * t_c / 31); % Continuous signal

figure(2);
plot(t_c, x_c, '-w');   % Plot continuous signal in black
hold on;
stem(n, x_n, 'filled'); % Overlay discrete samples
hold off;
title('cos(8\pi t/31)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
xlim([0 200]);          % Set x-axis limits
ylim([-1.2 1.2]);       % Set y-axis limits