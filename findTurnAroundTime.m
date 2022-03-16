function output = findTurnAroundTime(processes, n, burstTime, waitingTime, &turnAroundTime)
    
    for i= 1:n
        %tat = burstTime+waitingTime
        turnAroundTime(i) = burstTime(i) + waitingTime(i);
    end
    
    output = turnAroundTime;