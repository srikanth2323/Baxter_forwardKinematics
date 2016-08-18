

function [Jb] = Jacobian_matrix(angle_vector)

%function [Jb] = Jacobian_matrix(angle_vector)
%--------------------------------------------------------------------------

% this function generates jacobian matrix

% angle_vector is joint_angle vector with theta1,theta2,....theta7
% angle_vector = [theta1,theta2,....theta7]

% example:

% angle_vector = [0 15 20 10 0 0 10];
% J = Jacobian_matrix(angle_vector)

%--------------------------------------------------------------------------

j_final = [];

for i = 1:7
    z = Z_vector(i,angle_vector);
    p = pos_end_joint(i,angle_vector);
    zp = cross(z,p);
    
    j_intermediate = [zp; z];
    
    j_final = [j_final j_intermediate ];
    
end

Jb = j_final;

end

    
    
    
    
    
    
    