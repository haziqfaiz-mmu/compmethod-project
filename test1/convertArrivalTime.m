function output=convertArrivalTime(&interArrival,n)
    
    converted = [];
    
    for i=1:n
        if(i==1)
            interArrival(i)=0;
            converted(i) =0;
        elseif(interArrival(i) <= 125)
            interArrival(i) =1;
            converted(i) = 1+interArrival(i-1);
        elseif(interArrival(i) <= 250)
            interArrival(i) =2;
            converted(i) = 2+interArrival(i-1);
        elseif(interArrival(i) <= 375)
            interArrival(i) =3;
            converted(i) = 3+interArrival(i-1);
        elseif(interArrival(i) <= 500)
            interArrival(i) =4;
            converted(i) = 4+interArrival(i-1);
        elseif(interArrival(i) <= 625)
            interArrival(i) =5;
            converted(i) = 5+interArrival(i-1);
        elseif(interArrival(i) <= 750)
            interArrival(i) =6;
            converted(i) = 6+interArrival(i-1);
        elseif(interArrival(i) <= 875)
            interArrival(i) =7;
            converted(i) = 7+interArrival(i-1);
        else
            interArrival(i) =8;
            converted(i) = 8+interArrival(i-1);
        end
    end
    
    output = converted;