function [xk , fvalues, dfvalues, k] = steepest_descent_algorithm_min_g(f, x1, e, l)
syms x y g
gradf = gradient(f , [x, y]);  

k = 1;
xk(:,1) = x1;
fvalues(:,1) = f(xk(1,1),xk(2,1));
dfvalues(:,1) = gradf(xk(1,1),xk(2,1));


while norm(gradf(xk(1,k),xk(2,k)))>=e
    h(g) = f( xk(1,k)-g*dfvalues(1,k) , xk(2,k)-g*dfvalues(2,k) );
    [ak , bk , ~] = bisection_with_derivatives_algorithm(h , l , 0 , 5);
    gmin = (ak+bk)/2;
    xk(1,k+1) = xk(1,k) -gmin*dfvalues(1,k) ;
    xk(2,k+1) = xk(2,k) -gmin*dfvalues(2,k) ;
    fvalues(:,k+1) = f(xk(1,k+1),xk(2,k+1));
    dfvalues(:,k+1) = gradf(xk(1,k+1),xk(2,k+1));
    if(k>1000)
        break
    end
    k = k+1;
    disp(k)    
end

end



