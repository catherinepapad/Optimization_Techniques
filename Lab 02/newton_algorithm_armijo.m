function [xk , fvalues, dfvalues, k] = newton_algorithm_armijo(f, x1, e)
syms x y g
gradf = gradient(f , [x, y]);  
hessianf = hessian(f , [x, y]);

k = 1;
xk(:,1) = x1;
dfvalues(:,1) = gradf(xk(1,1),xk(2,1));
fvalues(:,1) = f(xk(1,1),xk(2,1));

while norm(gradf(xk(1,k),xk(2,k)))>=e
    hessiank = hessianf(xk(1,k),xk(2,k));
    [a] = postive_definite_matrix(hessiank);
    if a == true
        dk = -inv(hessiank)*gradf(xk(1,k),xk(2,k));
        [g] = armijo_rule(f, xk, dk);
        
        xk(1,k+1) = xk(1,k) + g*dk(1) ;
        xk(2,k+1) = xk(2,k) + g*dk(2) ;
        fvalues(:,k+1) = f(xk(1,k+1),xk(2,k+1));
        dfvalues(:,k+1) = gradf(xk(1,k+1),xk(2,k+1));
    else
        disp("Hessian is not positive definite. End of execution.")
        return
    end
    
    if(k>1000)
        break
    end
    k = k+1;
    disp(k)    
end

end