addpath 'C:\Users\canla\OneDrive\Desktop\ME 534\Homework'
clc
clear all

C_0 = [3;2;1];
translation = [3;0;0];

% translate from origin to point A
C_1 = C_0 - translation;

% rotate about z by atand(3/2)
R_Z = body_fixed_rotations(3, atand(3/2));
C_2 = R_Z*C_1;

% rotate whole body about y by 45
C_3_star = C_2;

% now, going back to XYZ frame
R_Y = body_fixed_rotations(2, 45); 
C_2_star = R_Y' * C_3_star;

C_1_star = R_Z' * C_2_star;

C_0_star = C_1_star + translation
