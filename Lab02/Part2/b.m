n = 0:20;
% x[n] = 0.5^n * u[n]
x_n = 0.5.^n .* unit_step(n);
% h[n] = unit step
h_n = unit_step(n);
% y[n] = x[n] * h[n] (convolution)
y = a(x_n, h_n);

figure(1);
subplot(3, 1, 1);
stem(n, x_n);
xlabel('n');
ylabel('x[n]');
title('x[n] = 0.5^n \times u[n] (Exponential Sequence)');
xlim([0 20]);
ylim([0 1.5]);
grid on;

subplot(3, 1, 2);
stem(n, h_n);
xlabel('n');
ylabel('h[n]');
title('h[n] = u[n] (Unit Step Sequence)');
xlim([0 20]);
ylim([-0.1 1.5]);
grid on;

subplot(3, 1, 3);
stem(0:40, y(1:41));
xlabel('n');
ylabel('y[n]');
title('y[n] = x[n] * h[n] (Convolution Output)');
xlim([0 40]);
ylim([0 max(y(1:21))*1.5]);
grid on;

function y = unit_step(n)
y = double(n >= 0);
end