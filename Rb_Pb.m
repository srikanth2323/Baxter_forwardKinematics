
function [b] = Rb_Pb(a)

%function [b] = Rb_Pb(a)

%--------------------------------------------------------------------------

%This functions gives b = rotation matrix(0->b) when a is 0 [by transposing from b->0]
%b = position vector when a is 1

%--------------------------------------------------------------------------

% if a is 0 => o/p is rotation matrix
% if a is 1 => o/p is position vector

%--------------------------------------------------------------------------
% given Tb is b->0

Tb = [0.70710678 0.70710678 0 0.026; -0.70710678 0.70710678 0 0.219; 0 0 1 0.108; 0 0 0 1] ;

if a == 0
    
            Rb1 = Tb ;
            Rb1(4,:) = [];
            Rb1(:,4) = [];

            b = Rb1';% generated Rb is b->0; b= transpose(Rb) is 0->b

else if a == 1
        

            Pb1 = Tb(:,4);
            Pb1(4,:) = [];

            b = Pb1;% position vector

    else
        
        disp('invalid value: enter 0= rotation matrix: 1= position vector');
       
        b=[];
        
    end
end
    

