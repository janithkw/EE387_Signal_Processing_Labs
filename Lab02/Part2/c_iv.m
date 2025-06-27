h_n = [2 4 8 16 32 64 0 0 0 0 0 0 0 0 0];

% Sliding window summation (window length 5) applied to h[n]
y_sum = get_previous_sum(h_n);

% Plot the result
figure;
stem(0:length(y_sum)-1, y_sum, 'filled');
xlabel('n');
ylabel('y_{sum}[n]');
title('Sliding Window Summation of h[n] (window length 5)');
grid on;

function y_n = get_previous_sum(x_n)
    N = length(x_n);
    y_n = zeros(1, N);
    for n = 1:N
        start_index = max(1, n - 4);
        y_n(n) = sum(x_n(start_index:n));
    end
end