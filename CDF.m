function output = CDF(n)
    
    mean_hour  = floor(1+23*rand);
    mean_minute  = floor(1+59*rand);
    
    r_hour = floor(1+23*rand(1,n));
    r_minute = floor(1+59*rand(1,n));