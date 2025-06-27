% Discrete-time cosine signals with varying frequencies
n = -10:10;                          % Discrete time index
axesRange = [-10 10 -1.5 1.5];       % Axis limits for all subplots

figure(1);

% 1. cos(0 * n)
x = cos(0 * n);                      % Zero frequency (DC)
subplot(3,3,1);
stem(n, x, 'filled');
axis(axesRange);
xlabel("n");
ylabel("Amplitude");
title("x = cos(0 \cdot n)");
grid on;

% 2. cos(pi * n / 8)
x = cos(pi * n / 8);                 % Low frequency
subplot(3,3,2);
stem(n, x, 'filled');
axis(axesRange);
xlabel("n");
ylabel("Amplitude");
title("x = cos(\pin/8)");
grid on;

% 3. cos(pi * n / 4)
x = cos(pi * n / 4);                 % Higher frequency
subplot(3,3,3);
stem(n, x, 'filled');
axis(axesRange);
xlabel("n");
ylabel("Amplitude");
title("x = cos(\pin/4)");
grid on;

% 4. cos(pi * n / 2)
x = cos(pi * n / 2);                 % Even higher frequency
subplot(3,3,4);
stem(n, x, 'filled');
axis(axesRange);
xlabel("n");
ylabel("Amplitude");
title("x = cos(\pin/2)");
grid on;

% 5. cos(pi * n)
x = cos(pi * n);                     % Alternating sequence
subplot(3,3,5);
stem(n, x, 'filled');
axis(axesRange);
xlabel("n");
ylabel("Amplitude");
title("x = cos(\pin)");
grid on;

% 6. cos(3*pi*n/2)
x = cos(3 * pi * n / 2);             % Higher frequency
subplot(3,3,6);
stem(n, x, 'filled');
axis(axesRange);
xlabel("n");
ylabel("Amplitude");
title("x = cos(3\pin/2)");
grid on;

% 7. cos(7*pi*n/4)
x = cos(7 * pi * n / 4);             % Near Nyquist frequency
subplot(3,3,7);
stem(n, x, 'filled');
axis(axesRange);
xlabel("n");
ylabel("Amplitude");
title("x = cos(7\pin/4)");
grid on;

% 8. cos(15*pi*n/8)
x = cos(15 * pi * n / 8);            % Very high frequency
subplot(3,3,8);
stem(n, x, 'filled');
axis(axesRange);
xlabel("n");
ylabel("Amplitude");
title("x = cos(15\pin/8)");
grid on;

% 9. cos(2*pi*n)
x = cos(2 * pi * n);                 % Periodic with period 1
subplot(3,3,9);
stem(n, x, 'filled');               
axis(axesRange);
xlabel("n");
ylabel("Amplitude");
title("x = cos(2\pin)");
grid on;