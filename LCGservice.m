function output = LCGservice(n)
    
     seed  = floor(1+30*rand);
     
     x =[];
     a = 13; %copy from tutor
     c= 53; %copy from tutor
    
     x(1) = mod((a*seed + c),30);
    
     for i=2:n
         x(i) = mod((a*x(i-1) + c),30);
        
     end
     
     
     output = x;