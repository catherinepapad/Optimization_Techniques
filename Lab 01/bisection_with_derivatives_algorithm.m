function [ak , bk , k] = bisection_with_derivatives_algorithm(f , l , a1 , b1)
syms x
df = diff (f , x);
n = ceil(log(l/(b1-a1))/log(1/2));
ak(1,1) = a1;
bk(1,1) = b1;
for k=1:n
    xk = (ak(k)+bk(k))/2;
    dfxk = subs (df,xk);
    if(dfxk==0)
        break
    elseif (dfxk>0) 
        ak(k+1) = ak(k);
        bk(k+1) = xk;
    elseif (dfxk<0)
        ak(k+1) = xk;
        bk(k+1) = bk(k);
    end      
end    

end