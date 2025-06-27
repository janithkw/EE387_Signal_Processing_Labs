clear all;
close all;

% Define symbolic variables
syms s t

% Define all transfer functions symbolically
H0 = (s-1)/(s^2+2*s+2);
H1 = (s+5)/(s^2+2*s+3);
H2 = (2*s^2+5*s+12)/(s^2+2*s+10);
H3 = (2*s^2+5*s+12)/((s^2+2*s+10)*(s+2));

% Base frequency
base_freq = 420; % kHz

for i = 1:3
    f_kHz = base_freq * i; % Frequencies: 420, 840, 1260 kHz
    f = f_kHz * 1000; % Convert to Hz for calculations
    
    % Laplace transform of input signal sin(2*pi*f*t)
    input_signal_laplace = laplace(sin(2*pi*f*t), t, s);
    
    % Define time vector for plotting
    Fs = 1e8; % Sampling frequency (100 MHz for high resolution)
    time = 0:1/Fs:2e-5; % Time vector (from 0 to 20 microseconds)
    
    % Create figure for this frequency
    figure;
    
    % Plot the input signal
    subplot(5,1,1);
    input_signal = sin(2*pi*f*time); % Input signal in time domain
    plot(time*1e6, input_signal, 'w-', 'LineWidth', 2);
    title(['Input: sin(2π × ', num2str(f_kHz), ' kHz × t)']);
    xlabel('Time (μs)');
    ylabel('Amplitude');
    xlim([0 20]);
    grid on;
    
    % H0(s) = (s-1)/(s²+2s+2)
    output_signal_laplace = H0 * input_signal_laplace;
    output_signal_time = ilaplace(output_signal_laplace, s, t);
    output_signal_eval = double(subs(output_signal_time, t, time));
    subplot(5,1,2);
    plot(time*1e6, output_signal_eval, 'b-', 'LineWidth', 2);
    title('H0(s) = (s - 1)/(s² + 2s + 2)');
    xlabel('Time (μs)');
    ylabel('Amplitude');
    xlim([0 20]);
    grid on;
    
    % H1(s) = (s+5)/(s²+2s+3)
    output_signal_laplace = H1 * input_signal_laplace;
    output_signal_time = ilaplace(output_signal_laplace, s, t);
    output_signal_eval = double(subs(output_signal_time, t, time));
    subplot(5,1,3);
    plot(time*1e6, output_signal_eval, 'r-', 'LineWidth', 2);
    title('H1(s) = (s + 5)/(s² + 2s + 3)');
    xlabel('Time (μs)');
    ylabel('Amplitude');
    xlim([0 20]);
    grid on;
    
    % H2(s) = (2s²+5s+12)/(s²+2s+10)
    output_signal_laplace = H2 * input_signal_laplace;
    output_signal_time = ilaplace(output_signal_laplace, s, t);
    output_signal_eval = double(subs(output_signal_time, t, time));
    subplot(5,1,4);
    plot(time*1e6, output_signal_eval, 'g-', 'LineWidth', 2);
    title('H2(s) = (2s² + 5s + 12)/(s² + 2s + 10)');
    xlabel('Time (μs)');
    ylabel('Amplitude');
    xlim([0 20]);
    grid on;
    
    % H3(s) = (2s²+5s+12)/((s²+2s+10)(s+2))
    output_signal_laplace = H3 * input_signal_laplace;
    output_signal_time = ilaplace(output_signal_laplace, s, t);
    output_signal_eval = double(subs(output_signal_time, t, time));
    subplot(5,1,5);
    plot(time*1e6, output_signal_eval, 'm-', 'LineWidth', 2);
    title('H3(s) = (2s² + 5s + 12)/((s² + 2s + 10)(s+2))');
    xlabel('Time (μs)');
    ylabel('Amplitude');
    xlim([0 20]);
    grid on;
    
    % Add overall title for the figure
    sgtitle(['System Responses to sin(2π × ', num2str(f_kHz), ' kHz × t) Input']);
    
    fprintf('Completed analysis for frequency: %d kHz\n', f_kHz);
end

fprintf('\nAnalysis complete for frequencies: 420 kHz, 840 kHz, and 1260 kHz\n');
fprintf('Each figure shows:\n');
fprintf('- Input sinusoidal signal\n');
fprintf('- Outputs from all 4 transfer functions\n');
fprintf('- Time domain responses using inverse Laplace transforms\n');
