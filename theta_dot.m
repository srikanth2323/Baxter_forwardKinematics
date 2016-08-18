

function [T] = theta_dot(jacobian)

%function [T] = theta_dot(jacobian)

%--------------------------------------------------------------------

% this function generates theta_dot values 
% it takes jacobian matrix as input and generates theta_dot as output

%--------------------------------------------------------------------


BJ_plus= pinv(jacobian);

x = [0.005; 0; 0; 0; 0; 0];

t = BJ_plus * x;


T = t;
end

