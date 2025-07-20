% Design the Butterworth filter with Fp = 1000 Hz, N = 4;
clear all;
clc;

Fp = 1000;             % Passband frequency in Hz
N = 4;                % Filter order

Wp = 2 * pi * Fp;      % Passband edge angular frequency
[num2, den2] = butter(N, Wp, 's');

H = tf(num2, den2);
figure;
bode(H);
grid on;
title(['Butterworth Filter (N = ' num2str(N) ', Fp = ' num2str(Fp) ' Hz)']);