function output = testFCFS()
    
    n = 100;
    processes = 1:n;
    burstTime = BoxMullerservice(100);
    arrivalTime = BoxMullerarrival(100);
    printf('Arrival time = \n');
    printf('%d ',arrivalTime);
    printf('Service time = \n');
    printf('%d ',burstTime);
    
    FCFS(processes,n,burstTime,arrivalTime);