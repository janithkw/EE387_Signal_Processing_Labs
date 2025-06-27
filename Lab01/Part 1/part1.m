clear all; %To clear all variables

Ts = 0.01; %Sampling time
t = -5:Ts:5; %Time vector where the signal is defined

y1 = ramp(t, 1, 3);    % r(t+3): shift=3, slope=1
y2 = ramp(t, 1, 1);    % r(t+1): shift=1, slope=1
y3 = ramp(t, 1, 0);    % r(t):   shift=0, slope=1
y4 = ustep(t, -3);      % u(t-3): shift=3

y = y1 - 2*y2 + 3*y3 - y4;
plot(t, y, 'r'); axis([-5 5 -1 7]); grid

function y = ramp(t, slope, shift)
    y = slope * max(0, t + shift);
end

function y = ustep(t, shift)
    y = double(t >= shift); % unit step function
    
    %t>=shift creates a logical array of 1s and 0s
end