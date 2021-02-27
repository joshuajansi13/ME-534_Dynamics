addpath 'C:\Users\canla\OneDrive\Desktop\ME 534\Homework'
clc
clear all

% converting from xyz to x1y1z1 frame
syms beta L R w1 w2 phi

r_BA = [L*cos(beta); 0; L*sin(beta)];
r_EB = [L + R; -R*phi; 0]; % small angle approx

pos = r_BA + r_EB;

w_frame = [-w1*sin(beta); 0; w1*cos(beta)];

rdot_rel = [0; -R*w2; 0];
vel = simplify(rdot_rel + cross(w_frame, pos))
