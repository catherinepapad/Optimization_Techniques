function [xkbar] = projection_old(xk , grad , s)
a = xk - s * grad;

if a(1) <= -10
    b1 = -10;
elseif a(1) >= 5
    b1 = 5;
else
    b1 = a(1);
end

if a(2) <= -8
    b2 = -8;
elseif a(2) >= 12
    b2 = 12;
else
    b2 = a(2);
end

xkbar = [b1;b2];

end