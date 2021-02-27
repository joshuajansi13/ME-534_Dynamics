addpath 'C:\Users\canla\OneDrive\Desktop\ME 534\Homework'
clc
clear all 

phi = 30;
theta1 = 60;
theta2 = -15;

R3 = body_fixed_rotations(1, theta2-theta1) * ...
    body_fixed_rotations(1, (theta1-90)) * ...
    body_fixed_rotations(3, phi);
R2 = body_fixed_rotations(1, theta1-90) * ...
    body_fixed_rotations(3, phi);
R1 = body_fixed_rotations(3, phi);

pos = R3.' * [0;0.5;0] + R2.' * [0;0.7;0] + R1.' * [0; 0.1; 0]
