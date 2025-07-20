% Design the Butterworth filter with the following specifications: Fp = 1000 Hz; Fs = 5000 Hz;

clear all;
clc;

Fp = 1000;             % Passband frequency in Hz
Fs = 5000;             % Stopband frequency in Hz
Rp = 1;                % Passband ripple in dB
Rs = 40;               % Stopband attenuation in dB (typical choice)

Wp = 2 * pi * Fp;      % Passband edge angular frequency
Ws = 2 * pi * Fs;      % Stopband edge angular frequency


% Butterworth filter design based on specs
[N1, Wn1] = buttord(Wp, Ws, Rp, Rs, 's');
[num1, den1] = butter(N1, Wn1, 's');

disp(['Calculated Order N = ' num2str(N1)]);


% Frequency response
H1 = tf(num1, den1);
figure;
bode(H1);
grid on;
title(['Butterworth Filter (Calculated Order N = ' num2str(N1) ')']);
