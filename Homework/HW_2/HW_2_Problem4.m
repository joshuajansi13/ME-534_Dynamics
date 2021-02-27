clc
clear all

syms r theta w w_dot 

% [r, theta, z]
pos = simplify([r*(cos(theta))^2 + (r*theta+r*sin(theta))*sin(theta);
       -r*cos(theta)*sin(theta) + (r*theta+r*sin(theta))*cos(theta);
       0]);

rdot_rel = [r*w*sin(theta)+r*w*theta*cos(theta);
            r*w*cos(theta)-r*w*theta*sin(theta);
            0];
w_frame = [0;0;w];
vel = simplify(rdot_rel + cross(w_frame, pos));

rddot_rel = [r*w_dot*sin(theta)+r*w^2*cos(theta);
             r*w_dot*cos(theta)-r*w^2*sin(theta)+r*w_dot;
             0];
accel = simplify(rddot_rel + cross(w_frame, vel))
