function [ak , bk , k] = bisection_algorithm(f , e , l , a1 , b1)
k = 1;
ak(1,1) = a1;
bk(1,1) = b1;
if ((bk-ak)<l)
    return
else
    while((bk(k)-ak(k))>=l)
        x1k = (ak(k) + bk(k))/2 - e;
        x2k = (ak(k) + bk(k))/2 + e;
        if (subs(f,x1k)<subs(f,x2k))
            bk(k+1) = x2k;
            ak(k+1) = ak(k);
        else
            bk(k+1) = bk(k);
            ak(k+1) = x1k;
        end
        k = k + 1;
    end    
end    
   

end