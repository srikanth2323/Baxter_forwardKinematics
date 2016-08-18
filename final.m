

prompt = 'enter theta vector with 7 angles: ';

t = input(prompt);

for i=1:7
    
   theta(i) = (t(i)*pi)/180;
   
end

[X,Y,Z] = X_Y_Z(theta)