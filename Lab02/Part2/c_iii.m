h_n = [2 4 8 16 32 64 0 0 0 0 0 0 0 0 0];
x_n = [1 1 1 1 1 0 0 0 0 0 0 0 0 0 0];
% Calculate convolution
y = a(x_n, h_n);
y_c = conv(x_n, h_n);

% Plot the generated sequences and convolution results
figure(1);

subplot(4, 1, 1);
stem(0:length(x_n)-1, x_n);
xlabel('n');
ylabel('x[n]');
title('x[n]');
ylim([0 max(x_n)*1.2]);
grid on;

subplot(4, 1, 2);
stem(0:length(h_n)-1, h_n);
xlabel('n');
ylabel('h[n]');
title('h[n]');
ylim([0 max(h_n)*1.2]);
grid on;

subplot(4, 1, 3);
stem(0:length(y)-1, y);
xlabel('n');
ylabel('y[n]');
title('y[n] = x[n] * h[n] (custom function)');
ylim([0 max(y)*1.2]);
grid on;

subplot(4, 1, 4);
stem(0:length(y_c)-1, y_c);
xlabel('n');
ylabel('y[n]');
title('y[n] = x[n] * h[n] (MATLAB conv)');
ylim([0 max(y_c)*1.2]);
grid