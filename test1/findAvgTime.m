function output=findAvgTime(processes, n, burstTime, arrivalTime,waitingTime,turnAroundTime)
    
    
    tt_wt_array = [];
    total_wt=0;
    total_tat=0;
    
    for i=1:n
        total_wt = total_wt + waitingTime(i);
        total_tat = total_tat + turnAroundTime(i);
        
    end
    
    avg_wt = total_wt/n;
    avg_tt = total_tat/n;
    tt_wt_array(1) = avg_wt;
    tt_wt_array(2) = avg_tt;
    
    output = tt_wt_array;
    