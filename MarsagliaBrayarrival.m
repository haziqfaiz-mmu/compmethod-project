function output=MarsagliaBayArrival(n)
    
    T=[];
    Z1=[];
    Z2=[];
    S=10;
    W1=0;
    W2=0;
    
    for i=1:n
        
        while (S>1)
             W1 = rand();
             W2 = rand();
             S = W1.^2 + W2.^2;
              printf('%2d\n',S)
        end
       
        T(i) = sqrt(((-2)*log(S))/S);
        Z1(i) = T(i)*W1;
        Z2(i) = T(i)*W2;
    end
    
    output = Z1;
    