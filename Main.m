function output = Main()
    
    r = input('Please enter the number of patients: ');
    printf('The number of patient is %1d \n', [r]);
    
    arrival_time=LCGarrival(r-1);
    service_time=LCGservice(r);
    
    printf('Arrival time =\n')
    printf('%004d\n',arrival_time)
    
    printf('Service time =\n')
    printf('%2d\n',service_time)
    
    
    
    