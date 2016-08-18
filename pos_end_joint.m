

function [Pe] = pos_end_joint(i,angle)

%function [Pe] = pos_end_joint(i,angle)
%--------------------------------------------------------------------------

%generates position vector from joint to end vector
% angle == joint angle
% i == joint number

%--------------------------------------------------------------------------
R = eye(3);
T = eye(4);
Rb = Rb_Pb(0);

for n = 1:i
R1 = rotation_matrix(n-1,n,angle(n));
R = R*R1;
end
Rib = Rb * R;

for k= i:6
   
T1 = Transform_final(k,k+1,angle(k+1));
T = T*T1;

end
%--------------------------------------------------------------------------
T(4,:)=[];
p = T(:,4);
T(:,4)= [];
Ri = T;
%--------------------------------------------------------------------------

px = [0; 0; 0.1];% p(e,7)

%--------------------------------------------------------------------------

Pe = (Rib * p) + (Rb * R * Ri * px);

end