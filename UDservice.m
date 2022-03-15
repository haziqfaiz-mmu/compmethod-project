function output=UDservice(n)
    r = ((rand(1,n)));
    b=30;
    a=-30;
    x=[];
    
    for i=1:n
        x(i)= floor(a + (b-a)*r(i));
                if(x(i)<0)
                    x(i) = x(i)*(-1);
                end
    end
    output =x;