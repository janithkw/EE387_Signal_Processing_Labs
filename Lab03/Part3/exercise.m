clear all;
close all;

% Define range and number of points for sigma and omega
sigma = linspace(-20, 20, 100);
omega = linspace(-20, 20, 100);

% Create meshgrid for sigma and omega
[sigmagrid, omegagrid] = meshgrid(sigma, omega);

% Combine sigma and omega into a complex plane grid (s-plane)
sgrid = sigmagrid + 1i*omegagrid;

% Define coefficients for numerator (b) and denominator (a) polynomials
b = [2 2 17];
a = [1 4 104];

% Calculate frequency response H1 using polynomial evaluation
H1 = polyval(b, sgrid)./polyval(a, sgrid);

% Calculate magnitude in dB, handling potential infinities
mag_dB = 20*log10(abs(H1));

% Replace any infinite or NaN values for better visualization
mag_dB(isinf(mag_dB) | isnan(mag_dB)) = -100;

% Create a mesh plot
figure;
mesh(sigmagrid, omegagrid, mag_dB);
xlabel('σ (Real Part)');
ylabel('ω (Imaginary Part)');
zlabel('|H(s)| (dB)');
title('3D Magnitude Response: H(s) = (2s² + 2s + 17)/(s² + 4s + 104)');
colorbar;
grid on;