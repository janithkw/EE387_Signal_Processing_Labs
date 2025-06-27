clear all;
close all;

% Define all transfer functions
b = [1 -1];        % Numerator coefficients - H(s)
a = [1 2 2];       % Denominator coefficients - H(s)

b1 = [1 5];        % Numerator coefficients - H1(s)
a1 = [1 2 3];      % Denominator coefficients - H1(s)

b2 = [2 5 12];     % Numerator coefficients - H2(s)
a2 = [1 2 10];     % Denominator coefficients - H2(s)

b3 = [2 5 12];     % Numerator coefficients - H3(s)
a3 = conv([1 2 10],[1 2]); % Denominator coefficients - H3(s)

% Generate frequency vector with 200 samples (rad/s)
omega = linspace(0.1, 100, 200);  % Positive frequencies for Bode plots

% Calculate frequency responses for all transfer functions
H = freqs(b, a, omega);
H1 = freqs(b1, a1, omega);
H2 = freqs(b2, a2, omega);
H3 = freqs(b3, a3, omega);

% Figure 1: H(s) = (s-1)/(s²+2s+2)
figure;
subplot(2,1,1);
semilogx(omega, 20*log10(abs(H)), 'b-', 'LineWidth', 2);
grid on;
xlabel('Frequency (rad/s)');
ylabel('Magnitude (dB)');
title('H(s) = (s-1)/(s²+2s+2): Bode Magnitude Plot');

subplot(2,1,2);
semilogx(omega, angle(H)*180/pi, 'b-', 'LineWidth', 2);
grid on;
xlabel('Frequency (rad/s)');
ylabel('Phase (degrees)');
title('H(s) = (s-1)/(s²+2s+2): Bode Phase Plot');

% Figure 2: H1(s) = (s+5)/(s²+2s+3)
figure;
subplot(2,1,1);
semilogx(omega, 20*log10(abs(H1)), 'r-', 'LineWidth', 2);
grid on;
xlabel('Frequency (rad/s)');
ylabel('Magnitude (dB)');
title('H1(s) = (s+5)/(s²+2s+3): Bode Magnitude Plot');

subplot(2,1,2);
semilogx(omega, angle(H1)*180/pi, 'r-', 'LineWidth', 2);
grid on;
xlabel('Frequency (rad/s)');
ylabel('Phase (degrees)');
title('H1(s) = (s+5)/(s²+2s+3): Bode Phase Plot');

% Figure 3: H2(s) = (2s²+5s+12)/(s²+2s+10)
figure;
subplot(2,1,1);
semilogx(omega, 20*log10(abs(H2)), 'g-', 'LineWidth', 2);
grid on;
xlabel('Frequency (rad/s)');
ylabel('Magnitude (dB)');
title('H2(s) = (2s²+5s+12)/(s²+2s+10): Bode Magnitude Plot');

subplot(2,1,2);
semilogx(omega, angle(H2)*180/pi, 'g-', 'LineWidth', 2);
grid on;
xlabel('Frequency (rad/s)');
ylabel('Phase (degrees)');
title('H2(s) = (2s²+5s+12)/(s²+2s+10): Bode Phase Plot');

% Figure 4: H3(s) = (2s²+5s+12)/((s²+2s+10)(s+2))
figure;
subplot(2,1,1);
semilogx(omega, 20*log10(abs(H3)), 'm-', 'LineWidth', 2);
grid on;
xlabel('Frequency (rad/s)');
ylabel('Magnitude (dB)');
title('H3(s) = (2s²+5s+12)/((s²+2s+10)(s+2)): Bode Magnitude Plot');

subplot(2,1,2);
semilogx(omega, angle(H3)*180/pi, 'm-', 'LineWidth', 2);
grid on;
xlabel('Frequency (rad/s)');
ylabel('Phase (degrees)');
title('H3(s) = (2s²+5s+12)/((s²+2s+10)(s+2)): Bode Phase Plot');

% Display transfer function information
fprintf('Transfer Functions:\n');
fprintf('H(s)  = (s-1)/(s²+2s+2)\n');
fprintf('H1(s) = (s+5)/(s²+2s+3)\n');
fprintf('H2(s) = (2s²+5s+12)/(s²+2s+10)\n');
fprintf('H3(s) = (2s²+5s+12)/((s²+2s+10)(s+2))\n');
fprintf('Frequency range: %.1f to %.1f rad/s\n', omega(1), omega(end));
fprintf('Number of frequency points: %d\n', length(omega));