b1 = [1 5]; % Numerator coefficients
a1 = [1 2 3]; % Demoninator coefficients

b2 = [2 5 12]; % Numerator coefficients
a2 = [1 2 10]; % Demoninator coefficients

b3 = [2 5 12]; % Numerator coefficients
a3 = conv([1 2 10],[1 2]); % Demoninator coefficients

% Calculate zeros and poles for each transfer function
zs1 = roots(b1);
ps1 = roots(a1);

zs2 = roots(b2);
ps2 = roots(a2);

zs3 = roots(b3);
ps3 = roots(a3);

% Create figure with subplots
figure;

% Subplot 1
subplot(1,3,1);
hold on;
% Plot zeros as white circles
plot(real(zs1), imag(zs1), 'o', 'MarkerSize', 8, 'MarkerEdgeColor', 'white', 'MarkerFaceColor', 'none', 'LineWidth', 2);
% Plot poles as white crosses
plot(real(ps1), imag(ps1), 'x', 'MarkerSize', 10, 'Color', 'white', 'LineWidth', 3);
grid on;
axis equal;
xlim([-6 2]);
ylim([-3 3]);
xlabel('Real Part');
ylabel('Imaginary Part');
title('H1(s): Poles and Zeros');
legend('Zeros (O)', 'Poles (X)', 'Location', 'best');
hold off;

% Subplot 2
subplot(1,3,2);
hold on;
% Plot zeros as white circles
plot(real(zs2), imag(zs2), 'o', 'MarkerSize', 8, 'MarkerEdgeColor', 'white', 'MarkerFaceColor', 'none', 'LineWidth', 2);
% Plot poles as white crosses
plot(real(ps2), imag(ps2), 'x', 'MarkerSize', 10, 'Color', 'white', 'LineWidth', 3);
grid on;
axis equal;
xlim([-4 2]);
ylim([-4 4]);
xlabel('Real Part');
ylabel('Imaginary Part');
title('H2(s): Poles and Zeros');
legend('Zeros (O)', 'Poles (X)', 'Location', 'best');
hold off;

% Subplot 3
subplot(1,3,3);
hold on;
% Plot zeros as white circles
plot(real(zs3), imag(zs3), 'o', 'MarkerSize', 8, 'MarkerEdgeColor', 'white', 'MarkerFaceColor', 'none', 'LineWidth', 2);
% Plot poles as white crosses
plot(real(ps3), imag(ps3), 'x', 'MarkerSize', 10, 'Color', 'white', 'LineWidth', 3);
grid on;
axis equal;
xlim([-4 2]);
ylim([-4 4]);
xlabel('Real Part');
ylabel('Imaginary Part');
title('H3(s): Poles and Zeros');
legend('Zeros (O)', 'Poles (X)', 'Location', 'best');
hold off;

% Set overall figure title
sgtitle('Pole-Zero Plots for Three Transfer Functions');

