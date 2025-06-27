% Define impulse response
n_h = 0:3; % define n_h from 0 to 3
h = 0.5.^n_h; % h(n) = 0.5^n for n = 0, 1, 2, 3, h[n] = [1, 0.5, 0.25, 0.125]


% Given output
y = [1, 2, 2.5, 3, 3, 3, 2, 1, 0]; 
n_y = 0:length(y)-1; 

% Find input x(n) using deconvolution
[x, r] = deconv(y, h); %deconvolution to find x(n) from y(n) and h(n)
n_x = 0:length(x)-1;

disp(x); %x[n] is produced here
% deconv(y, h) finds the input sequence x such that when x is convolved with h, you get y (i.e., y = conv(x, h)).
% x is the quotient (the estimated input signal).
% r is the remainder (the part of y that cannot be explained by convolution with h).

% Find global x-axis limits for alignment
x_min = min([-1, -1, -1]);
x_max = max([9, 9, 9]);

% Plot all three signals with aligned x-axes
figure;
subplot(3,1,1);
stem(n_h, h, 'filled','-w');
title('Impulse Response h(n)');
xlabel('n'); ylabel('h(n)');
xlim([x_min x_max]);

subplot(3,1,2);
stem(n_y, y, 'filled','-w');
title('Output y(n)');
xlabel('n'); ylabel('y(n)');
xlim([x_min x_max]);

subplot(3,1,3);
stem(n_x, x, 'filled','-w');
title('Input x(n)');
xlabel('n'); ylabel('x(n)');
xlim([x_min x_max]);