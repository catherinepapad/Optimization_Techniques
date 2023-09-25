close all
clear
syms x1 x2;
f(x1,x2) = x1^2/3 + 3*x2^2;
fhandle = matlabFunction(f);
e = 0.001;


%------First g--------------------------------------------------------------------- 
g = 0.1;

%First Point
xin = [5; -4];
[xk , ~, ~, ~] = steepest_descent_algorithm_constant_g(f, xin, e, g);

x1 = -6 : 0.1 : 6; 
x2 = -6 : 0.1 : 6;
[X1,X2] = meshgrid(x1,x2);

a = xk(1,:);
b = xk(2,:);

figure
subplot(1,2,1)
surf (X1 ,X2 , fhandle(X1,X2))
shading interp
hold on
plot3(a,b,f(a,b),'.r','markersize',10);
hold on
line = vertcat(a,b,f(a,b));
plot3(line(1,:),line(2,:),line(3,:),'k-');
xlabel('x1'); 
ylabel('x2'); 
zlabel('f(x)');
title('Constant $\gamma_k$ = 0.1, Initial point (5,-4)','Interpreter', 'latex','FontSize',20) 
grid on
grid minor

%figure
subplot(1,2,2)
fcontour(fhandle,[-10 10 -10 10],'LevelList', -50:2:50);
xlabel('x1'); 
ylabel('x2'); 
colorbar
hold on
scatter(a,b,10,'r','*');
hold on
plot(a,b,'k-');
title('Constant $\gamma_k$ = 0.1, Initial point (5,-4)','Interpreter', 'latex','FontSize',20)   

%Second Point
xin = [-3; 6];
[xk , ~, ~, ~] = steepest_descent_algorithm_constant_g(f, xin, e, g);

x1 = -6 : 0.1 : 6; 
x2 = -6 : 0.1 : 6;
[X1,X2] = meshgrid(x1,x2);

a = xk(1,:);
b = xk(2,:);

figure
subplot(1,2,1)
surf (X1 ,X2 , fhandle(X1,X2))
shading interp
hold on
plot3(a,b,f(a,b),'.r','markersize',10);
hold on
line = vertcat(a,b,f(a,b));
plot3(line(1,:),line(2,:),line(3,:),'k-');
xlabel('x1'); 
ylabel('x2'); 
zlabel('f(x)');
title('Constant $\gamma_k$ = 0.1, Initial point (-3,6)','Interpreter', 'latex','FontSize',20) 
grid on
grid minor

%figure
subplot(1,2,2)
fcontour(fhandle,[-10 10 -10 10],'LevelList', -50:2:50);
xlabel('x1'); 
ylabel('x2'); 
colorbar
hold on
scatter(a,b,10,'r','*');
hold on
plot(a,b,'k-');
title('Constant $\gamma_k$ = 0.1, Initial point (-3,6)','Interpreter', 'latex','FontSize',20)   


%------Second g--------------------------------------------------------------------- 
g = 0.3;

%First Point
xin = [5; -4];
[xk , ~, ~, ~] = steepest_descent_algorithm_constant_g(f, xin, e, g);

x1 = -6 : 0.1 : 6; 
x2 = -6 : 0.1 : 6;
[X1,X2] = meshgrid(x1,x2);

a = xk(1,:);
b = xk(2,:);

figure
subplot(1,2,1)
surf (X1 ,X2 , fhandle(X1,X2))
shading interp
hold on
plot3(a,b,f(a,b),'.r','markersize',10);
hold on
line = vertcat(a,b,f(a,b));
plot3(line(1,:),line(2,:),line(3,:),'k-');
xlabel('x1'); 
ylabel('x2'); 
zlabel('f(x)');
title('Constant $\gamma_k$ = 0.3, Initial point (5,-4)','Interpreter', 'latex','FontSize',20) 
grid on
grid minor

%figure
subplot(1,2,2)
fcontour(fhandle,[-10 10 -10 10],'LevelList', -50:2:50);
xlabel('x1'); 
ylabel('x2'); 
colorbar
hold on
scatter(a,b,10,'r','*');
hold on
plot(a,b,'k-');
title('Constant $\gamma_k$ = 0.3, Initial point (5,-4)','Interpreter', 'latex','FontSize',20)   

%Second Point
xin = [-3; 6];
[xk , ~, ~, ~] = steepest_descent_algorithm_constant_g(f, xin, e, g);

x1 = -6 : 0.1 : 6; 
x2 = -6 : 0.1 : 6;
[X1,X2] = meshgrid(x1,x2);

a = xk(1,:);
b = xk(2,:);

figure
subplot(1,2,1)
surf (X1 ,X2 , fhandle(X1,X2))
shading interp
hold on
plot3(a,b,f(a,b),'.r','markersize',10);
hold on
line = vertcat(a,b,f(a,b));
plot3(line(1,:),line(2,:),line(3,:),'k-');
xlabel('x1'); 
ylabel('x2'); 
zlabel('f(x)');
title('Constant $\gamma_k$ = 0.3, Initial point (-3,6)','Interpreter', 'latex','FontSize',20) 
grid on
grid minor

%figure
subplot(1,2,2)
fcontour(fhandle,[-10 10 -10 10],'LevelList', -50:2:50);
xlabel('x1'); 
ylabel('x2'); 
colorbar
hold on
scatter(a,b,10,'r','*');
hold on
plot(a,b,'k-');
title('Constant $\gamma_k$ = 0.3, Initial point (-3,6)','Interpreter', 'latex','FontSize',20)   


%------Third g--------------------------------------------------------------------- 
g = 0.35;

%First Point
xin = [5; -4];
[xk , ~, ~, ~] = steepest_descent_algorithm_constant_g(f, xin, e, g);

x1 = -6 : 0.1 : 6; 
x2 = -6 : 0.1 : 6;
[X1,X2] = meshgrid(x1,x2);

a = xk(1,:);
b = xk(2,:);

figure
subplot(1,2,1)
surf (X1 ,X2 , fhandle(X1,X2))
shading interp
hold on
plot3(a,b,f(a,b),'.r','markersize',10);
hold on
line = vertcat(a,b,f(a,b));
plot3(line(1,:),line(2,:),line(3,:),'k-');
xlabel('x1'); 
ylabel('x2'); 
zlabel('f(x)');
title('Constant $\gamma_k$ = 0.35, Initial point (5,-4)','Interpreter', 'latex','FontSize',20) 
grid on
grid minor

%figure
subplot(1,2,2)
fcontour(fhandle,[-10 10 -10 10],'LevelList', -50:2:50);
xlabel('x1'); 
ylabel('x2'); 
colorbar
hold on
scatter(a,b,10,'r','*');
hold on
plot(a,b,'k-');
title('Constant $\gamma_k$ = 0.35, Initial point (5,-4)','Interpreter', 'latex','FontSize',20)

%------Forth g--------------------------------------------------------------------- 
g = 3;

%First Point
xin = [5; -4];
[xk , ~, ~, ~] = steepest_descent_algorithm_constant_g(f, xin, e, g);

x1 = -6 : 0.1 : 6; 
x2 = -6 : 0.1 : 6;
[X1,X2] = meshgrid(x1,x2);

a = xk(1,:);
b = xk(2,:);

figure
subplot(1,2,1)
surf (X1 ,X2 , fhandle(X1,X2))
shading interp
hold on
plot3(a,b,f(a,b),'.r','markersize',10);
hold on
line = vertcat(a,b,f(a,b));
plot3(line(1,:),line(2,:),line(3,:),'k-');
xlabel('x1'); 
ylabel('x2'); 
zlabel('f(x)');
title('Constant $\gamma_k$ = 3, Initial point (5,-4)','Interpreter', 'latex','FontSize',20) 
grid on
grid minor

%figure
subplot(1,2,2)
fcontour(fhandle,[-10 10 -10 10],'LevelList', -50:2:50);
xlabel('x1'); 
ylabel('x2'); 
colorbar
hold on
scatter(a,b,10,'r','*');
hold on
plot(a,b,'k-');
title('Constant $\gamma_k$ = 3, Initial point (5,-4)','Interpreter', 'latex','FontSize',20)

%------Fifth g--------------------------------------------------------------------- 
g = 5;

%First Point
xin = [5; -4];
[xk , ~, ~, ~] = steepest_descent_algorithm_constant_g(f, xin, e, g);

x1 = -6 : 0.1 : 6; 
x2 = -6 : 0.1 : 6;
[X1,X2] = meshgrid(x1,x2);

a = xk(1,:);
b = xk(2,:);

figure
subplot(1,2,1)
surf (X1 ,X2 , fhandle(X1,X2))
shading interp
hold on
plot3(a,b,f(a,b),'.r','markersize',10);
hold on
line = vertcat(a,b,f(a,b));
plot3(line(1,:),line(2,:),line(3,:),'k-');
xlabel('x1'); 
ylabel('x2'); 
zlabel('f(x)');
title('Constant $\gamma_k$ = 5, Initial point (5,-4)','Interpreter', 'latex','FontSize',20) 
grid on
grid minor

%figure
subplot(1,2,2)
fcontour(fhandle,[-10 10 -10 10],'LevelList', -50:2:50);
xlabel('x1'); 
ylabel('x2'); 
colorbar
hold on
scatter(a,b,10,'r','*');
hold on
plot(a,b,'k-');
title('Constant $\gamma_k$ = 5, Initial point (5,-4)','Interpreter', 'latex','FontSize',20)

