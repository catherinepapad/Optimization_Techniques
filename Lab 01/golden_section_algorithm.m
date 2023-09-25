function [ak , bk , k] = golden_section_algorithm(f , l , a1 , b1)
g = 0.618;
x1k = a1 + (1-g)*(b1-a1);
x2k = a1 + g*(b1-a1);
k = 1;
ak(1,1) = a1;
bk(1,1) = b1;
fx1k = subs(f,x1k);
fx2k = subs(f,x2k);
if ((bk-ak)<l)
    return;
else
    while((bk(k)-ak(k))>=l)
        if(fx1k>fx2k)
            ak(k+1) = x1k;
            bk(k+1) = bk(k);
            x1k = x2k;
            x2k = ak(k+1) + g*(bk(k+1)-ak(k+1));  
            fx1k = fx2k;
            fx2k = subs(f,x2k);
        else
            ak(k+1) = ak(k);
            bk(k+1) = x2k;
            x2k = x1k;
            x1k = ak(k+1) + (1-g)*(bk(k+1)-ak(k+1)); 
            fx2k = fx1k;
            fx1k = subs(f,x1k);
        end    
        k = k + 1;
    end    
end    
   
        
end