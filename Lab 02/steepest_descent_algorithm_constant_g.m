function [xk , fvalues, dfvalues, k] = steepest_descent_algorithm_constant_g(f, x1, e, g)
syms x y
gradf = gradient(f , [x, y]);  

k = 1;
xk(:,1) = x1;
dfvalues(:,1) = gradf(xk(1,1),xk(2,1));
fvalues(:,1) = f(xk(1,1),xk(2,1));

while norm(gradf(xk(1,k),xk(2,k)))>=e
    xk(1,k+1) = xk(1,k) -g*dfvalues(1,k) ;
    xk(2,k+1) = xk(2,k) -g*dfvalues(2,k) ;
    fvalues(:,k+1) = f(xk(1,k+1),xk(2,k+1));
    dfvalues(:,k+1) = gradf(xk(1,k+1),xk(2,k+1));
    if(k>1000)
        break
    end
    k = k+1;
    disp(k)    
end

end



