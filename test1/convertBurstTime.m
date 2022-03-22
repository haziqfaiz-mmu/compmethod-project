function output = convertBurstTime(&burstTime,n)
    
    for i=1:n
        if(burstTime(i) <= 10)
            burstTime(i) = 1;
        elseif(burstTime(i) <= 30)
            burstTime(i) = 2;
        elseif(burstTime(i) <= 60)
            burstTime(i) = 3;
        elseif(burstTime(i) <= 85)
            burstTime(i) = 4;
        elseif(burstTime(i) <= 95)
            burstTime(i) = 5;
        elseif(burstTime(i) <= 100)
            burstTime(i) = 6;
        end
    end
    
    output = burstTime;