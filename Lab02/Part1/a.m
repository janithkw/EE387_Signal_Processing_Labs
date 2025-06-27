n = 0:15; % Define range of n
beta_values = [-1.5 -0.5 0.9 2.5]; % Define values for beta selected from the given ranges

% Loop through different beta values
for i = 1:length(beta_values)
    beta = beta_values(i);
    % Calculate x(n) for current beta
    x = 10 * beta.^n;
    % Plot the signal
    subplot(2,2,i);
    stem(n, x,'g');
    xlabel('n');
    ylabel('x(n)');
    title(sprintf('x(n) = 10(%g)^n', beta));
    grid on;
end