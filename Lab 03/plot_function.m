f=@(x1,x2)(x1.^2/3 + 3*x2.^2);

x1 = -15 : 0.1 : 15; 
x2 = -15 : 0.1 : 15; 
[X1,X2] = meshgrid(x1,x2);

figure
surf (X1 ,X2 , f(X1,X2))
xlabel('x1'); 
ylabel('x2'); 
zlabel('f(x)');
grid on
grid minor

figure
fcontour(f,[-15 15 -15 15],'LevelList', -100:0.1:100);
xlabel('x1'); 
ylabel('x2');
colorbar