function output = LCGarrival(n)
    
     seed  = floor(1+1000*rand);
     
     x =[];
     a = 13; %copy from tutor
     c= 53; %copy from tutor
    
     x(1) = 0;
     for i=2:n
         x(i) = mod((a*x(i-1) + c),1000);
     end
     
     
     output = x;