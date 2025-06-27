clear all;

f_s = 100; %Sampling frequencyt
t_s = 1/f_s;
t = -5:t_s:5; %Time vector where the signal is defined

function x = rect(t)
%
% RECT rectangular pulse
%
% Usage: x = rect(t)
%
% This function takes in a vector t of sample instants and outputs the
% corresponding rectangular pulse contained in the function x

% rect_pulse returns 1 for -0.5 <= t < 0.5, 0 elsewhere
    x = double(t >= -0.5 & t < 0.5);
end

x1 = rect(t);
plot(t,x1,'-w');
axis( [-2 2 -1 2]); %this sets the axis limits of x as [-2 2] and y as [-1 2]
xlabel( 'time (sec)' );
ylabel( 'x_1(t)' ) ;
title ('Plot 1: A rectangular pulse');


