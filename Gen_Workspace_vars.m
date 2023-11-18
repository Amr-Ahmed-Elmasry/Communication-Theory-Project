clear;clc; close all;

% Generating m(t)
t = 0:0.000001:2/1000;
m =@(t) - 1 * sawtooth(2*pi*1000*(t) + pi);

% Send to Simulink
kf = 6000;
simin.time = t';
simin.signals.values = m(t)';