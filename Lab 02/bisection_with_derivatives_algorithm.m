function [ak , bk , k] = bisection_with_derivatives_algorithm(f , l , a1 , b1)
syms g
df = diff (f , g);
n = ceil(log(l/(b1-a1))/log(1/2));
ak = a1;
bk = b1;
for k=1:n
    xk = (ak+bk)/2;
    dfxk = subs (df,xk);
    if(dfxk==0)
        break
    elseif (dfxk>0) 
        bk = xk;
    elseif (dfxk<0)
        ak = xk;
    end      
end    

end