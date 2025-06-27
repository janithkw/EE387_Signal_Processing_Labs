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
y=t_s*conv(x1,x1);

%The number of elements are now differnet there fore it is not possible to
%be plotted against the before mentioned t range; new number of t is 2*length(ts)- 1 

t_y = -10:t_s:10;

plot(t_y,y,'-w');
axis( [-2 2 -1 2]); %this sets the axis limits of x as [-2 2] and y as [-1 2]
xlabel( 'time (sec)' );
ylabel( 'y_1(t)' ) ;
title ('Figure : y_1(t) = x_1(t)*x_1(t)');

