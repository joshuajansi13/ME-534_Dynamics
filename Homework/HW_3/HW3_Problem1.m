addpath 'C:\Users\canla\OneDrive\Desktop\ME 534\Homework'
clc
clear all

w1 = 0.5;
w3 = 7;
t = 3;

theta = pi/20*cos(2*t);
thetadot = -pi/10*sin(2*t);

rotation = body_fixed_rotations(2, theta*180/pi) * ...
    body_fixed_rotations(1, -50);

total_ang_vel = rotation.' * [w3; thetadot; 0] + [0; 0; w1]
