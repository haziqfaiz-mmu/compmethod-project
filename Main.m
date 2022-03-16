function output = Main()
    
    patients = input('Please enter the number of patients: ');
    printf('The number of patient is %1d \n', [patients]);
    
    printf('Please choose a random generator function\n');
    printf('Enter 1 for LCG\n');
    printf('Enter 2 for Box-Muller\n');
    printf('Enter 3 for Marsaglia-Bray\n');
    randChoice = input('Choice: ');
    
    switch(randChoice)
        case {1}
            printf('You chose LCG\n');
            arrivalTime=LCGarrival(patients);
            serviceTime=LCGservice(patients); 
        case{2}
            printf('You chose Box-Muller\n');
            arrivalTime=BoxMullerarrival(patients);
            serviceTime=BoxMullerservice(patients);
        case{3}
            printf('You chose Marsaglia-Bray\n');
            arrivalTime=MarsagliaBrayarrival(patients);
            serviceTime=MarsagliaBrayservice(patients);
        otherwise
            printf('Invalid input\n');
    end
    
    printf('Arrival time =\n')
    printf('%d\n',arrivalTime)
    
    printf('Service time =\n')
    printf('%d\n',serviceTime)
    
    printf('----------------------------------------------------------------\n');
    printf('| SERVICE TIME  | PROBABILITY | CDF F(X) | RANDOM NUMBER RANGE |\n');
    printf('----------------------------------------------------------------\n');
    printf('|       1       |     0.10    |   0.10   |         1-10        |\n');
    printf('|       2       |     0.20    |   0.30   |         11-30       |\n');
    printf('|       3       |     0.30    |   0.60   |         31-60       |\n');
    printf('|       4       |     0.20    |   0.85   |         61-85       |\n');
    printf('|       5       |     0.1     |   0.95   |         86-95       |\n');
    printf('|       6       |     0.05    |     1    |         96-100      |\n');
    printf('----------------------------------------------------------------\n');
    
    printf('---------------------------------------------------------------------\n');
    printf('| INTERARRIVAL TIME  | PROBABILITY | CDF F(X) | RANDOM NUMBER RANGE |\n');
    printf('---------------------------------------------------------------------\n');
    printf('|         1          |    0.125    |   0.125  |       1-125         |\n');
    printf('|         2          |    0.125    |   0.250  |       126-250       |\n');
    printf('|         3          |    0.125    |   0.375  |       251-375       |\n');
    printf('|         4          |    0.125    |   0.500  |       376-500       |\n');
    printf('|         5          |    0.125    |   0.625  |       501-625       |\n');
    printf('|         6          |    0.125    |   0.750  |       626-750       |\n');
    printf('|         7          |    0.125    |   0.875  |       751-875       |\n');
    printf('|         8          |    0.125    |   1.000  |       876-1000      |\n');
    printf('---------------------------------------------------------------------\n');
    
    ServiceTime (serviceTime,patients); 
    InterArrivalTime (arrivalTime,patients);
    
    printf('Please choose a rule for the queue\n');
    printf('Enter 1 for Round Robin Rule\n');
    printf('Enter 2 for Idle Rule\n');
    ruleChoice = input('Choice: ');
    
    switch(ruleChoice)
        case{1}
            printf('You chose Round Robin\n');
        case{2}
            printf('You chose Idle Rule\n');
        otherwise
        printf('Invalid input\n');
    end 
    