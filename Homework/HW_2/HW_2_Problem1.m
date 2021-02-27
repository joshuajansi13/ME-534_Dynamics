clc
clear all

phi = 90; % deg
psi = 60; % deg
phi_dot = 0.2; % rad/s
psi_dot = -0.3; % rad/s
omega = 1500 * 2*pi / 60; %rad/s

ang_vel = [psi_dot;          % I_hat
           -omega*sind(psi); % J_hat
           omega*cosd(psi)]  % K_hat
       
ang_accel = [0;
             -omega*psi_dot*cosd(psi);
             -omega*psi_dot*sind(psi)]
