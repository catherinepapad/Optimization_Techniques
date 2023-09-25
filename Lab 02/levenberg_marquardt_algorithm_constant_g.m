function [xk , fvalues, dfvalues, k] = levenberg_marquardt_algorithm_constant_g(f, x1, e, g)
syms x y
gradf = gradient(f , [x, y]);  
hessianf = hessian(f , [x, y]);

k = 1;
xk(:,1) = x1;
dfvalues(:,1) = gradf(xk(1,1),xk(2,1));
fvalues(:,1) = f(xk(1,1),xk(2,1));

while norm(gradf(xk(1,k),xk(2,k)))>=e
    hessiank = hessianf(xk(1,k),xk(2,k));
    sizehessian = size(hessiank);
    eighessian = eig(hessiank);
    mk = 1.5*max(abs(eighessian));
    Dk = hessiank + mk*eye(sizehessian);
    [a] = postive_definite_matrix(Dk);
    if a == true
        gradfk = gradf(xk(1,k),xk(2,k));
        dk = -double(gradfk) \ double(Dk);
        [s] = criteria(f, gradf, xk, dk', g);
        if s == true
            xk(1,k+1) = xk(1,k) + g*dk(1) ;
            xk(2,k+1) = xk(2,k) + g*dk(2) ;
            fvalues(:,k+1) = f(xk(1,k+1),xk(2,k+1));
            dfvalues(:,k+1) = gradf(xk(1,k+1),xk(2,k+1));
        else
            disp("The value of g does not satisfy the criteria.")
            return
        end 
    else
        disp("Dk is not positive definite. End of execution.")
        return
    end
    
    if(k>1000)
        break
    end
    k = k+1;
    disp(k)    
end

end



