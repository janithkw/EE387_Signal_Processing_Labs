function y = a(x, h)
% Discrete convolution: y[n] = sum_k x[k] * h[n-k+1]
nx = length(x);
nh = length(h);
N = nx + nh - 1; % Length of the convolution result
y = zeros(1, N); % Initialize output vector

for n = 1:N
    for k = 1:nx
        if (n - k + 1 > 0) && (n - k + 1 <= nh)
            y(n) = y(n) + x(k) * h(n - k + 1);
        end
    end
end
end