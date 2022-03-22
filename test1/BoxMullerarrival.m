function output = BoxMullerarrival(n)
    
    U1 = rand(1,n);
    U2 = rand(1,n);
    R = sqrt((-2)*log(U1));
    Theta = 2*pi*U2;
    
    X=[];
    Y=[];
    
    X(1) = 0;
    Y(1) = 0;
    
    for i=2:n
        X(i) = mod(floor(R(i)*cos(Theta(i))*1000),1000);
        Y(i) = mod(floor(R(i)*sin(Theta(i))*1000),1000);
            
    end
    
   
    output = X;