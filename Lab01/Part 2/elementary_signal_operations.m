clear all;

f_s = 100; % Sampling frequency
t_s = 1/f_s;
t = -5:t_s:5; % Time vector

function x = rect(t)
    x = double(t >= -0.5 & t < 0.5);
end

% Elementary Signal Operations
x1 = rect(t);
x2 = rect(t-1);
x3 = rect(t/2);
x4 = rect(t) + 0.5*rect(t-1);
x5 = rect(-t) + 0.5*rect(-t-1);      % x5(t) = x4(-t)
x6 = rect(-t+1) + 0.5*rect(-t);      % x6(t) = x4(1-t) = x5(1+t)

figure('Position',[100 100 1000 600]); % Wider figure for better label fit

subplot(3,2,1);
plot(t,x1,'w-');
axis([-2 2 -1 2]);
xlabel('time (sec)');
ylabel('x_1(t) = rect(t)');
set(gca, 'FontSize', 10);

subplot(3,2,2);
plot(t,x2,'w-');
axis([-2 2 -1 2]);
xlabel('time (sec)');
ylabel('x_2(t) = rect(t-1)');
set(gca, 'FontSize', 10);

subplot(3,2,3);
plot(t,x3,'w-');
axis([-2 2 -1 2]);
xlabel('time (sec)');
ylabel('x_3(t) = rect(t/2)');
set(gca, 'FontSize', 10);

subplot(3,2,4);
plot(t,x4,'w-');
axis([-2 2 -1 2]);
xlabel('time (sec)');
ylabel('x_4(t) = rect(t) + 0.5rect(t-1)');
set(gca, 'FontSize', 10);

subplot(3,2,5);
plot(t,x5,'w-');
axis([-2 2 -1 2]);
xlabel('time (sec)');
ylabel('x_5(t) = rect(-t) + 0.5rect(-t-1)');
set(gca, 'FontSize', 10);

subplot(3,2,6);
plot(t,x6,'w-');
axis([-2 2 -1 2]);
xlabel('time (sec)');
ylabel('x_6(t) = rect(-t+1) + 0.5rect(-t)');
set(gca, 'FontSize', 10);