clear;clc; close all;

% Generating m(t)
t = 0:0.000001:6/1000;
m =@(t) - 1 * sawtooth(2*pi*1000*(t) + pi);
figure
subplot(3, 1, 1);
plot(t,m(t));
title('Information Message Signal')
xlabel('Time (s)');
ylabel('m(t)');
grid on

% Generating the divation signal
kf = 2000;
for i = 1: length(t)
    theta(i) = 2 * pi * kf * integral(m, 0, t(i));
end
subplot(3, 1, 2);
plot(t, theta);
title('Phase Deviation Signal')
xlabel('Time (s)');
ylabel('Θ(t)');
grid on

% Generating FM
Ac = 5;
fc = 20000;
FM = Ac * cos(2 * pi * fc .* t + theta);
subplot(3, 1, 3);
plot(t, FM);
title('FM Signal')
xlabel('Time (s)');
ylabel('SFₘ(t)');
grid on