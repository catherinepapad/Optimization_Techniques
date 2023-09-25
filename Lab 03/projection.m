function [xkbar] = projection(x)

if x(1) <= -10
    a1 = -10;
elseif x(1) >= 5
    a1 = 5;
else
    a1 = x(1);
end

if x(2) <= -8
    a2 = -8;
elseif x(2) >= 12
    a2 = 12;
else
    a2 = x(2);
end

xkbar = [a1;a2];

end