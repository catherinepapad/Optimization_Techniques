function [s] = criteria(f, gradf, x, d, g)
xnew(1,1) = x(1,1) + g*d(1);
xnew(2,1) = x(2,1) + g*d(2);

s = false;

for b = 0.1:0.05:1
    if d'*gradf(x(1,1),x(2,1)) > b * d'*gradf(xnew(1,1),xnew(2,1))
        for a = 0.001:0.001:b
            if f(xnew(1,1),xnew(2,1)) <= ( f(x(1,1),x(2,1)) + a*g*d'*gradf(x(1,1),x(2,1)) )
                s = true;
                return
            end
        end
    end
    
end

end