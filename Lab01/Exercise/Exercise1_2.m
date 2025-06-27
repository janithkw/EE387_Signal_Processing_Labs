% Define discrete time signals x(n) and h(n)
x1 = [1 2 3 4 5];
h1 = 1;

% Time indices
n_x1 = 0:length(x1)-1;
n_h1 = 0:length(h1)-1;

% Perform convolution
y1 = conv(x1, h1);
n_y1 = 0:length(y1)-1;

% Find the global x-axis limits
x_min = min([-5, -5, -5]);
x_max = max([5, 5, 5]);

% Plot using stem for discrete signals
figure;
subplot(3,1,1);
stem(n_x1, x1, 'filled','-w');
title('Signal x(n)');
xlabel('n'); ylabel('Amplitude');
xlim([x_min x_max]);
ylim([0 max(x1)+1]);

subplot(3,1,2);
stem(n_h1, h1, 'filled','-w');
title('Signal h(n)');
xlabel('n'); ylabel('Amplitude');
xlim([x_min x_max]);
ylim([0 max(h1)+1]);

subplot(3,1,3);
stem(n_y1, y1, 'filled','-w');
title('Convolution y(n) = x(n) * h(n)');
xlabel('n'); ylabel('Amplitude');
xlim([x_min x_max]);
ylim([0 max(y1)+1]);