function output=UDarrival(n)
    
    r = ((rand(1,n)));
    b=100;
    a=-100;
    x=[];
    x(1)=0;
    for i=2:n
        x(i)= floor(a + (b-a)*r(i));
                if(x(i)<0)
                    x(i) = x(i)*(-1);
                end
    end
    output =x;