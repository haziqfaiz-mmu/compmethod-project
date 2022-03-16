function output = ServiceTime(randomG,n)
    
     service_time = randomG;
     printf('Service time =\n')
     printf('---------------------\n');
     printf('|  PATIENT  |  TIME |\n');
     printf('---------------------\n');
     for i=1:n
        if(service_time(i) <= 10)
            service_time(i) = 1;
        elseif(service_time(i) <= 30)
            service_time(i) = 2;
        elseif(service_time(i) <= 60)
            service_time(i) = 3;
        elseif(service_time(i) <= 85)
            service_time(i) = 4;
        elseif(service_time(i) <= 95)
            service_time(i) = 5;
        elseif(service_time(i) <= 100)
            service_time(i) = 6;
        end
        
        printf('| patient%2d | %4d  |\n',i,service_time(i));
        
    end
    printf('---------------------\n');
    
    output = service_time;