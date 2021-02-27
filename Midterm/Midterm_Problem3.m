clc
clear all

theta = 30*pi/180; % radians
L = 0.03; % meters
R = 0.01; % meters
w1 = 12;
w2 = -7;
w2dot = 30;
m = 0.05; % kg

rddot = [w1*w2*R*cos(theta)-w2dot*R*sin(theta)-w2^2*R*cos(theta)+ ...
                           w1*(R*w2*cos(theta)-L*w1-w1*R*cos(theta));
         R*w2dot*cos(theta)-R*w2^2*sin(theta)+w1*w2*R*sin(theta)- ...
                                w1*(w1*R*sin(theta)-R*w2*sin(theta));
         0];

F = m*rddot;
F_magnitude = norm(F)


