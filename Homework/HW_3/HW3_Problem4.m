addpath 'C:\Users\canla\OneDrive\Desktop\ME 534\Homework'
clc
clear all

y0 = [5; 0]; % pos and vel respectively; initial conditions
tspan = [0 1];
thetadot = 10;
mu = 0.5;
g = 981; % cm/s^2
target = 30; % cm

[t, y] = ode45(@(t, y) bead_eom(t, y, mu, thetadot, g), tspan, y0);

% interpolate (index 50 and 51)
time = t(50) + (target - y(50, 1)) * (t(51)-t(50))/(y(51,1)-y(50,1))


function ydot = bead_eom(t, y, mu, thetadot, g)

pos = y(1);
vel = y(2);

rdot = vel;
rddot = pos*thetadot^2 - mu*sqrt(4*vel^2*thetadot^2 + g^2);

ydot = [rdot; rddot];
end
