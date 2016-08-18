
function [ T ] = Transform_final(m,n,angle)

%function [ T ] = Transform_final(m,n,angle)
%----------------------------------------------------
%This function takes inputs from matrix generated
%using DH parameters
%m------ input
%n------ input
%angle----- joint angle
%output is Final Homogenous Transformation matrix
%----------------------------------------------------
dh_matrix = joint_angle(angle);
    
    
    trans_matrix = [];
    final_matrix = eye(4);
    m = m+1;
    if(m>n)
        
        if (m == n+1)
            
            final_matrix = eye(4);
        else
        
        disp('error m should be less than n');
        final_matrix=[];
    
        end
    end
    if(m ~= n)
    
    for i = m:n
    s=i;
           % seperation of each joint vector
           dh_vector = dh_matrix(s,:) ;
           % calling transformation function
           trans_matrix = transformation_matrix(dh_vector);
           final_matrix = final_matrix*trans_matrix;
    end
    else 
          dh_vector = dh_matrix(n,:);
          final_matrix = transformation_matrix(dh_vector);
    
    end         

T = final_matrix;

p = T(:,4);
p(4) = [];
Translation = p;
Quaternion = quaternion(T);

    end