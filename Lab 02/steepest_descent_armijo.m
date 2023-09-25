function [xk , fvalues, dfvalues, k] = steepest_descent_armijo(f, x1, e)
syms x y g
gradf = gradient(f , [x, y]);  

k = 1;
xk(:,1) = x1;
dk = -gradf(xk(1,1),xk(2,1));
dfvalues(:,1) = -dk;
fvalues(:,1) = f(xk(1,1),xk(2,1));

while norm(gradf(xk(1,k),xk(2,k)))>=e
    [g] = armijo_rule(f, xk, dk);
    xk(1,k+1) = xk(1,k) + g*dk(1) ;
    xk(2,k+1) = xk(2,k) + g*dk(2) ;
    dk = -gradf(xk(1,k+1),xk(2,k+1));
    dfvalues(:,k+1) = -dk;
    fvalues(:,k+1) = f(xk(1,k+1),xk(2,k+1));
    if(k>1000)
        break
    end
    k = k+1;
    disp(k)    
end

end



