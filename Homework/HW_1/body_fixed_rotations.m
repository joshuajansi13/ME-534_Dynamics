% NOTE: Make sure that the angles that you pass in are in degrees.
function matrix = body_fixed_rotations(axis, angle)
switch axis
    case 1 % about x-axis
        matrix = [1           0                0;
                  0    cosd(angle)   sind(angle);
                  0    -sind(angle)  cosd(angle);];
    case 2 % about y-axis
        matrix = [cosd(angle)   0   -sind(angle);
                  0             1              0;
                  sind(angle)   0    cosd(angle);];
    case 3 % about z-axis
        matrix = [cosd(angle)    sind(angle)    0;
                  -sind(angle)   cosd(angle)    0;
                  0                0            1;];
end
