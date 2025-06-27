% Calculate the current bank balance using the formula:
% B_current = B_previous * 1.01 + P
% y[n] = y[n-1] * 1.01 + x[n]
function B_current = a_i(B_previous, P)
    B_current = B_previous * 1.01 + P;
end