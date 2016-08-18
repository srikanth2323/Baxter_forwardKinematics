
% DH matrices for various joiint angles
%----------------------------------------------------------------------------------
function dh = joint_angle(q)
%function dh = joint_angle(q)
%this function will generate dh_parameters based on joint angle
dh = [0.283 q 0 0; 0 (pi/2)+q 0.125 -90; 0.3643 q 0 90; 0 q 0.069 -90; 0.3742 q 0 90; 0 q 0 -90; 0.2295 q 0 90];

end