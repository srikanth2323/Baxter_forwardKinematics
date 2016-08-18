function [T] = transformation_matrix( dh_vector )

%function [ T ] = transformation_matrix( dh_vector )
%--------------------------------------------------------------

%This function takes input values from DH parameters
%Gives output Transformation matrix t

%--------------------------------------------------------------

%dh_vector consists d,theta,a,alpha values
%assigning values

d= dh_vector(1);
theta=dh_vector(2);
a=dh_vector(3);
alpha=dh_vector(4);

%----------------------------------------------------------------
alpha = alpha* (pi/180);%conversion from degress to radians

%--------------------------------------------------------------

%Final Homogenous Transformed Matrix

T=[cos(theta) -sin(theta) 0 a ; sin(theta)*cos(alpha) cos(theta)*cos(alpha) -sin(alpha) -sin(alpha)*d; sin(theta)*sin(alpha) cos(theta)*sin(alpha) cos(alpha) cos(alpha)*d; 0 0 0 1];

end

