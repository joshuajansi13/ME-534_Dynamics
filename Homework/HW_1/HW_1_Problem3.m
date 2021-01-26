addpath 'C:\Users\canla\OneDrive\Desktop\ME 534\Homework'
clc
clear all

r_BA = [-50; 20; 0];
r_CA = [-50; 0; 40];

i_hat = r_BA/norm(r_BA);
e_hat = r_CA/norm(r_CA); % going to be used in a cross product
                         % to find k_hat
                            
k_hat = cross(i_hat, e_hat) / norm(cross(i_hat, e_hat)); % had to normalize
                                                         % b/c unit vectors
                                                         % were not
                                                         % previously ortho
j_hat = cross(k_hat, i_hat);

% The i, j, and k hats will form the 3x3 rotation matrix.

r_OA = [-50; 0; 0];
rotation_matrix = [transpose(i_hat);
                   transpose(j_hat);
                   transpose(k_hat)];
xyz = rotation_matrix*r_OA
