clc
clear all

omega3 = 5000 * 2*pi / 60; % rad/s
omega1 = 3; % rad /s
omega1_dot = -1.8; % rad/s^2
theta = 75; % deg
theta_dot = 0;
theta_ddot = 3; % rad/s^2

omega_flywheel = [omega1+omega3*cosd(theta);
                  -theta_dot;
                  omega3*sind(theta)];
 
omega_dot_rel = [omega1_dot; -theta_ddot; 0];
omega_frame = [omega1; 0; 0];
alpha_flywheel = omega_dot_rel + cross(omega_frame, omega_flywheel)
