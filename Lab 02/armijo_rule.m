function [g] = armijo_rule(f, xk, dk)
syms x y 
gradf = gradient(f , [x, y]);

a = 10^(-4);
b = 0.5;
s = 0.5;

dk_trans = dk';
m = 1;
g = s*b;

fx = f(xk(1),xk(2));
fx1 = f(xk(1)+g*dk(1) ,xk(2)+g*dk(2));

while(1)
    if (fx-fx1 ) < (-a)*b^(m)*s*dk_trans*gradf(xk(1),xk(2))
        m = m + 1;
        g = s*b^m;
        xk(1) = xk(1)+g*dk(1);
        xk(2) = xk(2)+g*dk(2);
        fx = f(xk(1),xk(2));
        fx1 = f(xk(1)+g*dk(1) ,xk(2)+g*dk(2));
    else
        break
    end
    

end


end