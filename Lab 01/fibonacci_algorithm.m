function [ak , bk , k] = fibonacci_algorithm(f , e , l , a1 , b1)  
F(1) = 1;
F(2) = 1;
c = (b1-a1)/l;
n = 2;
while(F(n)<=c)
    F(n+1)=F(n)+F(n-1);
    n = n + 1;
end
F(n+1)=F(n)+F(n-1);

ak(1,1) = a1;
bk(1,1) = b1;
x1k = a1 + F(n-2)*(b1-a1)/F(n);
x2k = a1 + F(n-1)*(b1-a1)/F(n);
fx1k = subs(f,x1k);
fx2k = subs(f,x2k);
k = 1; 

while((bk(k)-ak(k))>=l)
    if (fx1k>fx2k)
        ak(k+1) = x1k;
        bk(k+1) = bk(k);
        x1k = x2k;
        x2k = ak(k+1) + F(n-k)*(bk(k+1)-ak(k+1))/F(n-k+1);
        fx1k = fx2k; 
        fx2k = subs(f,x2k);
    else
        ak(k+1) = ak(k);
        bk(k+1) = x2k;
        x2k = x1k;
        x1k = ak(k+1) + F(n-k-1)*(bk(k+1)-ak(k+1))/F(n-k+1);
        fx2k = fx1k;
        fx1k = subs(f,x1k);
    end 
    if (k == n-3)
        x2k = x1k + e;
        fx2k = subs(f,x2k);
        if (fx1k > fx2k)
            ak(n-1) = x1k;
            bk(n-1) = bk(n-2);
        else
            ak(n-1) = ak(n-2);
            bk(n-1) = x2k;
        end
        return;
    end
    k = k + 1;
end



end