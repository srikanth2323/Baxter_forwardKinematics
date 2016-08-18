
function [Z] = Z_vector(i,angle)

%function [Z] = Z_vector(i,angle)
%--------------------------------------------------------------------------

%generates Z-vector from Rb and R(0,i)
%angle === joint angle
%i === joint number

%--------------------------------------------------------------------------
R= eye(3);
Rb = Rb_Pb(0);
for n = 1:i
    R1 = rotation_matrix(n-1,n,angle(n));
    R = R * R1;
end
Rib = Rb * R;
Z = Rib(:,3);

end
