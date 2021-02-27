addpath 'C:\Users\canla\OneDrive\Desktop\ME 534\Homework'
clc
clear all

t = pi;
y = 40;
ydot = -30;
yddot = -4;
w = 0.2;
theta = pi/6 * sin(2*t);
thetadot = pi/3 * cos(2*t);
thetaddot = -(2/3)*pi*sin(2*t);

w_frame = [thetadot; w*sin(theta); w*cos(theta)];
pos = [0; y; 0];
vel = [0; ydot; 0] + cross(w_frame, pos)
accel = [-w*ydot; yddot; thetaddot*y+thetadot*ydot] + cross(w_frame, vel)
