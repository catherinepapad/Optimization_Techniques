syms x;
f1(x) = (x-2)^2 + x*log(x+3);
f2(x) = 5^x + (2 - cos(x))^2;
f3(x) = exp(x)*(x^3-1) + (x-1)*sin(x);

% fh1 = matlabFunction(f1);
% fh2 = matlabFunction(f2);
% fh3 = matlabFunction(f3);

% df1 = diff(f1 , x);
% df2 = diff(f2 , x);
% df3 = diff(f3 , x);
% dfh1 = matlabFunction(df1);
% dfh2 = matlabFunction(df2);
% dfh3 = matlabFunction(df3);

a1 = -1;
b1 = 3;

l = 0.3;
e = 0.001;

% l1 = 0.0021;
% l2 = 0.005;
% l3 = 0.05;


% Bisection
% [ak_f1 , bk_f1 , k_f1] = bisection_algorithm(f1 , e , l , a1 , b1);
% [ak_f2 , bk_f2 , k_f2] = bisection_algorithm(f2 , e , l , a1 , b1);
% [ak_f3 , bk_f3 , k_f3] = bisection_algorithm(f3 , e , l , a1 , b1);
% disp(ak_f1(k_f1));
% disp(bk_f1(k_f1));
% lnew = bk_f1(k_f1) - ak_f1(k_f1);
% disp(lnew);
% disp(ak_f2(k_f2));
% disp(bk_f2(k_f2));
% lnew = bk_f1(k_f2) - ak_f1(k_f2);
% disp(lnew);
% disp(ak_f3(k_f3));
% disp(bk_f3(k_f3));
% lnew = bk_f1(k_f3) - ak_f1(k_f3);
% disp(lnew);
%--------------------------------

% Bisection with Derivatives
% [ak_f1 , bk_f1 , k_f1] = bisection_with_derivatives_algorithm(f1 , l , a1 , b1);
% [ak_f2 , bk_f2 , k_f2] = bisection_with_derivatives_algorithm(f2 , l , a1 , b1);
% [ak_f3 , bk_f3 , k_f3] = bisection_with_derivatives_algorithm(f3 , l , a1 , b1);
% disp(ak_f1(k_f1+1));
% disp(bk_f1(k_f1+1));
% lnew = bk_f1(k_f1+1) - ak_f1(k_f1+1);
% disp(lnew);
% disp(ak_f2(k_f2+1));
% disp(bk_f2(k_f2+1));
% lnew = bk_f2(k_f2+1) - ak_f2(k_f2+1);
% disp(lnew);
% disp(ak_f3(k_f3+1));
% disp(bk_f3(k_f3+1));
% lnew = bk_f3(k_f3+1) - ak_f3(k_f3+1);
% disp(lnew);
%--------------------------------

% Golden Section
% [ak_f1 , bk_f1 , k_f1] = golden_section_algorithm(f1 , l , a1 , b1);
% [ak_f2 , bk_f2 , k_f2] = golden_section_algorithm(f2 , l , a1 , b1);
% [ak_f3 , bk_f3 , k_f3] = golden_section_algorithm(f3 , l , a1 , b1);
% disp(ak_f1(k_f1));
% disp(bk_f1(k_f1));
% lnew = bk_f1(k_f1) - ak_f1(k_f1);
% disp(lnew);
% disp(ak_f2(k_f2));
% disp(bk_f2(k_f2));
% lnew = bk_f1(k_f2) - ak_f1(k_f2);
% disp(lnew);
% disp(ak_f3(k_f3));
% disp(bk_f3(k_f3));
% lnew = bk_f1(k_f3) - ak_f1(k_f3);
% disp(lnew);
%--------------------------------

% Fibonacci
% [ak_f1 , bk_f1 , k_f1] = fibonacci_algorithm(f1 , e , l , a1 , b1);
% disp(ak_f1(k_f1));
% disp(bk_f1(k_f1));
% lnew = bk_f1(k_f1+1) - ak_f1(k_f1+1);
% disp(lnew);
% [ak_f2 , bk_f2 , k_f2] = fibonacci_algorithm(f2 , e , l , a1 , b1);
% disp(ak_f2(k_f2));
% disp(bk_f2(k_f2));
% lnew = bk_f2(k_f2+2) - ak_f2(k_f2+2);
% disp(lnew);
% [ak_f3 , bk_f3 , k_f3] = fibonacci_algorithm(f3 , e , l , a1 , b1);
% disp(ak_f3(k_f3));
% disp(bk_f3(k_f3));
% lnew = bk_f3(k_f3+2) - ak_f1(k_f3+2);
% disp(lnew);
%--------------------------------