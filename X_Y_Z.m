
function [X, Y, Z] = X_Y_Z(angle_vector)

% function [X, Y, Z] = X_Y_Z(angle_vector)
%--------------------------------------------------------------------------

%EXAMPLE SYNTAX: [X,Y,Z] = X_Y_Z(angle_vector)

%--------------------------------------------------------------------------
% inputs
% angle_vector ( a vector with 7 joint angles)

 
d = 0.01;
n = 20000;

theta = angle_vector';

X_final=[];
Y_final=[];
Z_final=[];

for i = 0:n
    
   T_0_7 = eye(4);
          
          for k = 1:7
        
          T = Transform_final(k-1,k,theta(k));
          T_0_7 = T_0_7 * T;
          
          end
          
   T_0_7(4,:)= [];
   P = T_0_7(:,4);
   X = P(1);
   Y = P(2);
   Z = P(3);
   X_final = [X_final; X];      
   Y_final = [Y_final; Y];         
   Z_final = [Z_final; Z];        



    j = Jacobian_matrix(theta);
    t_dot = theta_dot(j);
  
    theta = (theta) + (t_dot * d);
    
end

X = X_final;
Y = Y_final;
Z = Z_final;

figure

t = 0:0.01:200;
subplot(3,1,1)

plot(t,X');
xlabel('time');
ylabel('X(end effetor)');

subplot(3,1,2)

plot(t,Y');
xlabel('time');
ylabel('Y(end effetor)');

subplot(3,1,3)
grid on;
plot(t,Z');
xlabel('time');
ylabel('Z(end effetor)');


end
    