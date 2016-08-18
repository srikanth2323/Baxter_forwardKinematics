
%This function converts rotation matrix to quaternion form

function [Q] = quaternion(trans_matrix)

%function [Q] = quaternion(trans_matrix)
%inputs: Transformation matrix
%output: Quaternion vector

%this function takes in transformation matrix and seperates rotation matrix
%from it and converts that rotation matrix to quaternion form

%conversion of transformation matrix to rotation matrix r

trans_matrix(4,:) = [];    %deletes 4th row
trans_matrix(:,4) = [];    %deletes 4th column
r = trans_matrix;

%------------------------------------------------------
%conversion to quaternion from rotation matrix r

e4 = 0.5*((1+r(1,1)+r(2,2)+r(3,3))^(1/2));
e3 = (r(2,1)-r(1,2))/(4*e4);
e2 = (r(1,3)-r(3,1))/(4*e4);
e1 = (r(3,2)-r(2,3))/(4*e4);

Q = [e1 e2 e3 e4];

end

