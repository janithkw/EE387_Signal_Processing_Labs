% Calculate the amount of savings
% % y[n] = y[n-1] + m[n]/2;
function savings = a_ii(previous_savings, M)
    savings = previous_savings + M / 2;
end