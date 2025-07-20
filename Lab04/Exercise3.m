% Design Chebyshev Type 1 filter with N = 4, Rp = 2 ; Fp = 1000.

clear all;
clc;

Fp = 1000;             % Passband frequency in Hz
Rp = 2;                % Passband ripple in dB
N = 4;                % Filter order

Wp = 2 * pi * Fp;      % Passband edge angular frequency

[num3, den3] = cheby1(N, Rp, Wp, 's');

H3 = tf(num3, den3);
figure;
bode(H3);
grid on;
title('Chebyshev Type I Filter (N = 4, Rp = 2 dB)');