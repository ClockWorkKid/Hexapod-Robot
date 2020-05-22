clear all
close all
clc

steps = 20;
t_end = 1;
t_step = t_end/steps;

t = 0:t_step:t_end;

theta_0 = 90;
theta_1 = 30;

theta_error = theta_1 - theta_0;
del_theta = theta_error * (3*t.^2 - 2*t.^3);

theta_t = theta_0 + del_theta;

plot(t,theta_t)