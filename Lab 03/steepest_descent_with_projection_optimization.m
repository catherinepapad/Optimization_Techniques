%close all
clear
syms x1 x2;
f(x1,x2) = x1^2/3 + 3*x2^2;
fhandle = matlabFunction(f);
e = 0.01;


%-----------------Point 1--------------------------------------------------
disp('Point 1')
g = 0.5;
s = 5;

xin = [5; -5];
[xk , ~, ~, k] = steepest_descent_with_projection_algorithm(f, xin, e, g, s);

x1 = -10 : 0.1 : 10; 
x2 = -10 : 0.1 : 10;
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
title('Constant $\gamma_k$ = 0.5, $s_k$ = 5, Initial point (5,-5)','Interpreter', 'latex','FontSize',20) 
grid on
grid minor

%figure
subplot(1,2,2)
fcontour(fhandle,[-10 10 -10 10],'LevelList', -100:0.1:100);
xlabel('x1'); 
ylabel('x2'); 
colorbar
hold on
scatter(a,b,10,'r','*');
hold on
plot(a,b,'k-');
title('Constant $\gamma_k$ = 0.5, $s_k$ = 5, Initial point (5,-5)','Interpreter', 'latex','FontSize',20)

disp(['Final Point (' , num2str(xk(1,k)), ',' , num2str(xk(2,k)), ') at k = ' , num2str(k+1)])

%-----------------Point 1'--------------------------------------------------
disp('Point 1')
g = 0.2;        %Point 1 with different g
s = 5;

xin = [5; -5];
[xk , ~, ~, k] = steepest_descent_with_projection_algorithm(f, xin, e, g, s);

x1 = -10 : 0.1 : 10; 
x2 = -10 : 0.1 : 10;
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
title('Constant $\gamma_k$ = 0.2, $s_k$ = 5, Initial point (5,-5)','Interpreter', 'latex','FontSize',20) 
grid on
grid minor

%figure
subplot(1,2,2)
fcontour(fhandle,[-10 10 -10 10],'LevelList', -100:0.1:100);
xlabel('x1'); 
ylabel('x2'); 
colorbar
hold on
scatter(a,b,10,'r','*');
hold on
plot(a,b,'k-');
title('Constant $\gamma_k$ = 0.2, $s_k$ = 5, Initial point (5,-5)','Interpreter', 'latex','FontSize',20)

disp(['Final Point (' , num2str(xk(1,k)), ',' , num2str(xk(2,k)), ') at k = ' , num2str(k)])

%-----------------Point 2--------------------------------------------------
disp('Point 2')
g = 0.1;
s = 15;

xin = [-5; 10];
[xk , ~, ~, k] = steepest_descent_with_projection_algorithm(f, xin, e, g, s);

x1 = -10 : 0.1 : 10; 
x2 = -10 : 0.1 : 10;
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
title('Constant $\gamma_k$ = 0.1, $s_k$ = 15, Initial point (-5,10)','Interpreter', 'latex','FontSize',20) 
grid on
grid minor

%figure
subplot(1,2,2)
fcontour(fhandle,[-10 10 -10 10],'LevelList', -100:0.1:100);
xlabel('x1'); 
ylabel('x2'); 
colorbar
hold on
scatter(a,b,10,'r','*');
hold on
plot(a,b,'k-');
title('Constant $\gamma_k$ = 0.1, $s_k$ = 15, Initial point (-5,10)','Interpreter', 'latex','FontSize',20)   

disp(['Final Point (' , num2str(xk(1,k)), ',' , num2str(xk(2,k)), ') at k = ' , num2str(k)])


%-----------------Point 3--------------------------------------------------
disp('Point 3')
g = 0.2;
s = 0.1;

xin = [8; -10];
[xk , ~, ~, k] = steepest_descent_with_projection_algorithm(f, xin, e, g, s);

x1 = -10 : 0.1 : 10; 
x2 = -10 : 0.1 : 10;
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
title('Constant $\gamma_k$ = 0.2, $s_k$ = 0.1, Initial point (8,-10)','Interpreter', 'latex','FontSize',20) 
grid on
grid minor

%figure
subplot(1,2,2)
fcontour(fhandle,[-10 10 -10 10],'LevelList', -100:0.1:100);
xlabel('x1'); 
ylabel('x2'); 
colorbar
hold on
scatter(a,b,10,'r','*');
hold on
plot(a,b,'k-');
title('Constant $\gamma_k$ = 0.2, $s_k$ = 0.1, Initial point (8,-10)','Interpreter', 'latex','FontSize',20)   

disp(['Final Point (' , num2str(xk(1,k)), ',' , num2str(xk(2,k)), ') at k = ' , num2str(k)])