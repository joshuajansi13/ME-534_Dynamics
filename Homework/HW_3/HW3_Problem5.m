addpath 'C:\Users\canla\OneDrive\Desktop\ME 534\Homework'
clc
clear all

% Parameters
mass = 0.75;
k_spring = 25;
radius= 1;
t_end = acos(1-2*pi/5); % time for one revolution
tspan = [0 t_end];

% initial conditions
y0 = [0; 0]; % pos and vel

% call ODE45 function
[t, y] = ode45(@(t, y) mass_eom(t, y, mass, k_spring, radius), tspan, y0);

theta = 5.*(1-cos(t));
omega = 5.*sin(t);
omega_dot = 5.*cos(t);

N = mass.*radius.*omega.^2 - 2.*mass.*y(:, 2).*omega - ...
    mass.*y(:, 1).*omega_dot;

% Plots
figure(1)
plot(t, y(:, 1))
title('Time vs Position')
xlabel('Time (s)')
ylabel('Position(m)')

figure(2)
plot(t, N)
title('Time vs Normal Force')
xlabel('Time (s)')
ylabel('Normal Force(N)')

figure(3)
plot(theta, y(:, 1))
title('Theta vs Position')
xlabel('Theta (rad)')
ylabel('Position(m)')

figure(4)
plot(theta, N)
title('Theta vs Normal Force')
xlabel('Theta (rad)')
ylabel('Normal Force(N)')

function ydot = mass_eom(t, y, m, k, R)
pos = y(1);
vel = y(2);

w = 5*sin(t);
wdot = 5*cos(t);

sdot = vel;
sddot = R*wdot - (k/m - w^2)*pos;
ydot = [sdot; sddot];
end
