function output=MarsagliaBayArrival(n)
    
    T=[];
    Z1=[];
    Z2=[];
    S=10;
    W1=0;
    W2=0;
    Z1(1)=0;
    Z2(1)=0;
    
    for i=2:n
        
        while (S>1)
             W1 = rand();
             W2 = rand();
             S = W1.^2 + W2.^2;
             %printf('%2d\n',S)
        end
       
        T(i) = sqrt(((-2)*log(S))/S);
        Z1(i) = mod(floor(T(i)*W1*1000),1000);
        Z2(i) = mod(floor(T(i)*W2*1000),1000);
        S=10;
    end
    
    output = Z1;
    