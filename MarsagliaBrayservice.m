function output=MarsagliaBrayservice(n)
    
    U1 = rand(1,n);
    U2 = rand(1,n);
    R = sqrt((-2)*log(U1));
    Theta = 2*pi*U2;
    
    X=[];
    Y=[];
    
    for i=1:n
        X(i) = mod(floor(R(i)*cos(Theta(i))*100),100);
        Y(i) = mod(floor(R(i)*sin(Theta(i))*100),100);
            
    end
    
   
    output = X;