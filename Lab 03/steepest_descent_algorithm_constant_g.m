function [xk , fvalues, dfvalues, k] = steepest_descent_algorithm_constant_g(f, xin, e, g)
syms x1 x2
gradf = gradient(f , [x1, x2]);  

k = 1;
xk(:,1) = xin;
dfvalues(:,1) = gradf(xk(1,1),xk(2,1));
fvalues(:,1) = f(xk(1,1),xk(2,1));

while norm(gradf(xk(1,k),xk(2,k)))>=e
    xk(1,k+1) = xk(1,k) -g*dfvalues(1,k) ;
    xk(2,k+1) = xk(2,k) -g*dfvalues(2,k) ;
    fvalues(:,k+1) = f(xk(1,k+1),xk(2,k+1));
    dfvalues(:,k+1) = gradf(xk(1,k+1),xk(2,k+1));
    if(k>200)
        break
    end
    k = k+1;
    disp(k)    
end

end



