function output = LCGservice(n)
    
     seed  = floor(1+100*rand);
     
     x =[];
     a = 13; %copy from tutor
     c= 53; %copy from tutor
    
     x(1) = mod((a*seed + c),100);
    
     for i=2:n
         x(i) = mod((a*x(i-1) + c),100);
        
     end
     
     output = x;