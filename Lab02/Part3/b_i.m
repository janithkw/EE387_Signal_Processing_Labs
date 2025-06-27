% Define the impulse input
n = 0:40;
delta = zeros(size(n));
delta(1) = 1; % δ[n] = 1 for n = 0

% Initial balance
B_previous = 0;

% Output array
y_n = zeros(1, length(n));

% Simulate the system for each time step
for i = 1:length(n)
    % Apply the bank_balance function with the current impulse input
    y_n(i) = bank_balance(B_previous, delta(i));
    % Update the previous balance for the next iteration
    B_previous = y_n(i);
end

% Plot the output
stem(n, y_n);
xlabel('Time Index (n)');
ylabel('Output (y_n)');
title('Output for Impulse Input (Initial Balance = 0)');

% Calculate the current bank balance using the formula:
% B_current = B_previous * 1.01 + P
% y[n] = y[n-1] * 1.01 + x[n]
function B_current = bank_balance(B_previous, P)
    B_current = B_previous * 1.01 + P;
end