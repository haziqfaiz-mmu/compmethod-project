function output = FCFS()
    
    n = 5;
    processes = 1:n;
    %burstTime = BoxMullerservice(10);
    %arrivalTime = BoxMullerarrival(10);
    burstTime = [3,4,3,6,2];
    interArrivalTime=[0,2,4,7,10];
    convertBurstTime(burstTime,n);
    arrivalTime =  convertArrivalTime(interArrivalTime,n)
    
    
    printf('Arrival time = \n');
    printf('%d ',arrivalTime);
    printf('Service time = \n');
    printf('%d ',burstTime);
    
    findAverage(processes,n,burstTime,arrivalTime);
