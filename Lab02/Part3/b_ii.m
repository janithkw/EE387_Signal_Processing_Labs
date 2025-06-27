% Define the impulse input δ[n]
n = 0:40;
delta = zeros(size(n));
delta(1) = 1; % δ[n] = 1 for n = 0

previous_savings = 0;

% Output array
y_n = zeros(1, length(n));

% Simulate the system for each time step
for i = 1:length(n)
    % Apply the merchant_savings function with the current impulse input
    y_n(i) = merchant_savings(previous_savings, delta(i));
    % Update the previous balance for the next iteration
    previous_savings = y_n(i);
end

% Plot the output
stem(n, y_n);
xlabel('Month Index (n)');
ylim([0 1]);
ylabel('Output (y_n)');
title('Output for Impulse Input (Initial Savings = 0)');

% Calculate the amount of savings
% y[n] = y[n-1] + m[n]/2;
function savings = merchant_savings(previous_savings, M)
    savings = previous_savings + M / 2;
end