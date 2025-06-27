clear all;
close all;

% 1. Define the numerator and denominator polynomial coefficients
b = [2 2 17];      % Numerator coefficients
a = [1 4 104];     % Denominator coefficients

% Generate frequency vector with 200 samples (rad/s)
omega = linspace(-20, 20, 200);  % Frequency range from -20 to 20 rad/s

% 2. Use freqs function to evaluate the frequency response
H = freqs(b, a, omega);

% 3. Plot the magnitude and phase of the frequency response
figure;

% Magnitude plot (linear scale)
subplot(2,2,1);
plot(omega, abs(H), 'b-', 'LineWidth', 2);
grid on;
xlabel('Frequency (rad/s)');
ylabel('|H(jω)|');
title('Magnitude Response (Linear Scale)');

% Phase plot
subplot(2,2,2);
plot(omega, angle(H)*180/pi, 'r-', 'LineWidth', 2);
grid on;
xlabel('Frequency (rad/s)');
ylabel('Phase (degrees)');
title('Phase Response');

% 4. Plot the Bode plot using results from step 2
% Magnitude in dB vs log frequency
subplot(2,2,3);
semilogx(omega, 20*log10(abs(H)), 'b-', 'LineWidth', 2);
grid on;
xlabel('Frequency (rad/s)');
ylabel('Magnitude (dB)');
title('Bode Plot - Magnitude');

% Phase in degrees vs log frequency
subplot(2,2,4);
semilogx(omega, angle(H)*180/pi, 'r-', 'LineWidth', 2);
grid on;
xlabel('Frequency (rad/s)');
ylabel('Phase (degrees)');
title('Bode Plot - Phase');

% Add overall title
sgtitle('Frequency Response Analysis: H(s) = (2s² + 2s + 17)/(s² + 4s + 104)');

% Display transfer function information
fprintf('Transfer Function H(s):\n');
fprintf('Numerator: %ds² + %ds + %d\n', b(1), b(2), b(3));
fprintf('Denominator: %ds² + %ds + %d\n', a(1), a(2), a(3));
fprintf('Frequency range: %.1f to %.1f rad/s\n', omega(1), omega(end));
fprintf('Number of frequency points: %d\n', length(omega));

% Optional: Compare with MATLAB's built-in bode function
figure;
s = tf(b, a);  % Create transfer function object
bode(s);
title('Verification using MATLAB bode() function');
grid on;
