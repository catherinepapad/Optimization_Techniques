f=@(x,y)(x.^5.*exp(-x.^2-y.^2));

x = -5 : 0.05 : 5; 
y = -5 : 0.05 : 5;
[X,Y] = meshgrid(x,y);

figure
surf (X ,Y , f(X,Y))
xlabel('x'); 
ylabel('y'); 
zlabel('f(x,y)');
grid on
grid minor

figure
fcontour(fhandle,[-5 5 -5 5],'LevelList', -1.5:0.1:1.5);
xlabel('x'); 
ylabel('y');
colorbar