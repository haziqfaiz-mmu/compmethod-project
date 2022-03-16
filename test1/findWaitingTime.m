function output = findWaitingTime(processes, n, burstTime, &waitingTime,arrivalTime)
    
    serviceTime=[];
    serviceTime(1) = arrivalTime(1);
    waitingTime(1) = 0;
    
    %calculate wait Time
    for i=2:n
        %add burst time of previous process
        serviceTime(i) = serviceTime(i-1) + burstTime(i-1);
        
        %Find waiting time for current process
        %sum - arrivalTime(i)
        waitingTime(i) = serviceTime(i)-arrivalTime(i);  
            if (waitingTime(i)<0)
                waitingTime=0;
            end
    end
    
    output = waitingTime;