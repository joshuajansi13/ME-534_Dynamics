clc
clear all

syms alpha ell psi(t) psi0 beta R v

psi = psi0*sin(beta*t);

pos = [R-ell*sin(psi);
       -ell*sin(alpha)*cos(psi);
       ell*cos(alpha)*cos(psi)];

w_frame = [0; 0; v/R];

vel = diff(pos, t) + cross(w_frame, pos);

accel = simplify(diff(vel, t) + cross(w_frame, vel))

