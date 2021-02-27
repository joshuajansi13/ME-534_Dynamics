clc
clear all

% parameters
friction = 0.12;
gravity = 9.81;
mass = 2;
spring_const = 1000;
r0 = 0.1;
tspan = [0 1];

% initial conditions
y0 = [1.5*r0; 0]; % [pos, vel]

% call ode45 function
[t, y] = ode45(@(t, y) mass_eom(t, y, friction, gravity, mass, ...
    spring_const), tspan, y0);

position_vector = y(:, 1);
velocity_vector = y(:, 2);

r_max = max(position_vector)
r_min = min(position_vector)
rdot_max = max(velocity_vector)
rdot_min = min(velocity_vector)

% plots
figure(1)
plot(t, position_vector)
title('Position vs Time')
xlabel('Time (s)')
ylabel('Position (m)')

figure(2)
plot(t, velocity_vector)
title('Velocity vs Time')
xlabel('Time (s)')
ylabel('Velocity (m/s)')

% eom function
function ydot = mass_eom(t, y, mu, g, m, k)
pos = y(1);
vel = y(2);

theta = 1.2*sin(6.5*t);
theta_dot = 7.8*cos(6.5*t);
theta_ddot = -50.7*sin(6.5*t);

rdot = vel;
rddot = -(2*mu*theta_dot*rdot + theta_ddot*mu*pos + ...
    mu*g*cos(theta))*sign(rdot) + theta_dot^2*pos - ...
    g*sin(theta) - k*pos/m;

ydot = [rdot; rddot];
end
