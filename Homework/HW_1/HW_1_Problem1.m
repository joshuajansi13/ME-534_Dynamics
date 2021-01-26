addpath 'C:\Users\canla\OneDrive\Desktop\ME 534\Homework'
clc
clear all

% parameters all in degrees
phi = 30;
theta = 45;
psi = -60;

R_phi = body_fixed_rotations(3, phi);
R_theta = body_fixed_rotations(1, theta);
R_psi = body_fixed_rotations(3, psi);

% Answer for part b
rotation_matrix = R_psi*R_theta*R_phi

% Answer for part c
xyz = [-5; 3; 0]; % column vector
XYZ = transpose(rotation_matrix) * xyz
