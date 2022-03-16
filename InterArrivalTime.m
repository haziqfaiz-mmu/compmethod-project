function output = InterArrivalTime (randomG,n)
    
    arrival_time = randomG;
    interarrival_time=[];
    printf('Interarrival time =\n')
    printf('------------------------------------------------\n');
    printf('|  PATIENT  | INTER ARRIVAL TIME |ARRIVAL TIME |\n');
    printf('------------------------------------------------\n');
    %printf('| patient 1 |    0  |\n');
    for i=1:n
        if(i==1)
            arrival_time(i)=0;
            interarrival_time(i) =0;
        elseif(arrival_time(i) <= 125)
            interarrival_time(i) =1;
            arrival_time(i) = 1+arrival_time(i-1);
        elseif(arrival_time(i) <= 250)
            interarrival_time(i) =2;
            arrival_time(i) = 2+arrival_time(i-1);
        elseif(arrival_time(i) <= 375)
            interarrival_time(i) =3;
            arrival_time(i) = 3+arrival_time(i-1);
        elseif(arrival_time(i) <= 500)
            interarrival_time(i) =4;
            arrival_time(i) = 4+arrival_time(i-1);
        elseif(arrival_time(i) <= 625)
            interarrival_time(i) =5;
            arrival_time(i) = 5+arrival_time(i-1);
        elseif(arrival_time(i) <= 750)
            interarrival_time(i) =6;
            arrival_time(i) = 6+arrival_time(i-1);
        elseif(arrival_time(i) <= 875)
            interarrival_time(i) =7;
            arrival_time(i) = 7+arrival_time(i-1);
        else
            interarrival_time(i) =8;
            arrival_time(i) = 8+arrival_time(i-1);
        end
        %printf('|  PATIENT  | INTER ARRIVAL TIME |ARRIVAL TIME |\n');
         printf('| patient%2d |               %4d | %4d        |\n',i,interarrival_time(i),arrival_time(i));

    end
    printf('------------------------------------------------\n');
    
    output = arrival_time;