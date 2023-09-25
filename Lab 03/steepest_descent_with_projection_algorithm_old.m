function [xk , fvalues, dfvalues, k] = steepest_descent_with_projection_algorithm_old(f, xin, e, g, s)
syms x1 x2
gradf = gradient(f , [x1, x2]);  

k = 1;
xk(:,1) = xin;
dfvalues(:,1) = gradf(xk(1,1),xk(2,1));
fvalues(:,1) = f(xk(1,1),xk(2,1));

while norm(gradf(xk(1,k),xk(2,k)))>=e
    [xkbar] = projection_old(xk(:,k) , gradf(xk(1,k),xk(2,k)) , s);
    xk(1,k+1) = xk(1,k) + g*(xkbar(1) - xk(1,k)) ;
    xk(2,k+1) = xk(2,k) + g*(xkbar(2) - xk(2,k)) ;
    fvalues(:,k+1) = f(xk(1,k+1),xk(2,k+1));
    dfvalues(:,k+1) = gradf(xk(1,k+1),xk(2,k+1));
    if(k>1000)
        break
    end
    k = k+1;
    disp(k)    
end

end







