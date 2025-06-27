clear all; %To clear all variables

Ts = 0.01; %Sampling time
t = -5:Ts:5; %Time vector where the signal is defined
x = 3*exp(-t).*cos(4*pi*t); % x(t) = 3e^-tcos(4*pi*t)

env = 3*exp(-t); % Envelope of the signal

subplot(2,1,1); % First subplot: signal with envelope
plot(t, x, 'r'); hold on;
plot(t, env, 'w--');
plot(t, -env, 'w--');
axis([-3 4 -50 50]);
grid;
xlabel('Time (s)');
ylabel('Amplitude');
title('Signal and Envelope');
legend('Signal', 'Envelope');

subplot(2,1,2); % Second subplot: envelope only
plot(t, env, 'w-'); hold on;
plot(t, -env, 'w-');
axis([-3 4 -50 50]);
grid;
xlabel('Time (s)');
ylabel('Amplitude');
title('Envelope');
legend('Envelope');
hold off;