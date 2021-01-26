addpath 'C:\Users\canla\OneDrive\Desktop\ME 534\Homework'
clc
clear all

% parameters all in degrees
west_of_north = 40; % about vertical axis
climb = -20; % about e-w axis
bank = 10; % about n-s axis

R_Z = body_fixed_rotations(3, west_of_north);
R_Y_prime = body_fixed_rotations(2, climb);
R_X_double_prime = body_fixed_rotations(1, bank);

rotation_matrix = R_X_double_prime*R_Y_prime*R_Z;

% NWU stands for north, west, up
nwu = [0.5; 0; -2];
NWU = transpose(rotation_matrix) * nwu
