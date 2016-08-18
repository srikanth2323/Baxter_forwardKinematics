
function [R] = rotation_matrix(a,b,angle)

%function R = rotation_matrix(a,b,angle)
%-------------------------------------------------------
%This function calls Trans_final function and takes 
%inputs from it 
%and generates a rotation matrix respectively
%-------------------------------------------------------

t = Transform_final(a,b,angle);
t(4,:)=[]; %deletes 4th row
t(:,4)=[]; %deletes 4th column
R = t; %left over 3x3 matrix is rotation matrix

end