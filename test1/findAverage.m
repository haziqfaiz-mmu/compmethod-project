function output = findAverage(processes, n, burstTime, arrivalTime)
    
    waitingTime = [];
    turnAroundTime= [];
    tt_wt_array = [];
    
    %find the waitiing time of aal processes
    findWaitingTime(processes,n,burstTime,waitingTime,arrivalTime);
    
    printf('Waiting time = \n');
    printf('%d ',waitingTime);
    
    
    %find the turn around time for all processes
    findTurnAroundTime(processes,n, burstTime, waitingTime,turnAroundTime);
    
    printf('Turn around time = \n');
    printf('%d ',turnAroundTime);
   
    printf('\n');
    
    %find the average time
    tt_wt_array = findAvgTime(processes, n, burstTime, arrivalTime,waitingTime,turnAroundTime);
    
    printf('Average waiting time is %.3f\n',tt_wt_array(1));
    printf('Average turn around time is %.3f\n',tt_wt_array(2));
    
