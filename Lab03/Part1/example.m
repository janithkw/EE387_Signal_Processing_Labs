clear all;
close all;
b = [1 -1]; % Numerator coefficients
a = [1 2 2]; % Demoninator coefficients
zs = roots(b); % Generetes Zeros
ps = roots(a); % Generetes poles

% Create pole-zero plot with custom markers and colors
figure;
hold on;
% Plot zeros as white circles
plot(real(zs), imag(zs), 'o', 'MarkerSize', 8, 'MarkerEdgeColor', 'white', 'MarkerFaceColor', 'none', 'LineWidth', 2);
% Plot poles as white crosses
plot(real(ps), imag(ps), 'x', 'MarkerSize', 10, 'Color', 'white', 'LineWidth', 3);


% Customize the plot
grid on;
axis equal;
xlabel('Real Part');
ylabel('Imaginary Part');
title('Pole-Zero Plot');
legend('Zeros (O)', 'Poles (X)', 'Location', 'best');

hold off;