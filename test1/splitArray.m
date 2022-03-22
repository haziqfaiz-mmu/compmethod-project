function output = splitArray(array,&odd,&even,n)
    
    %odd index
    j=1;
    i=1;
    while(i<=n)
        odd(j)=array(i);
        j=j+1;
        i=i+2;
    end
    
    %even index
    k=1;
    i=2;
    while(i<=n)
        even(k)=array(i);
        k=k+1;
        i=i+2;
    end
        