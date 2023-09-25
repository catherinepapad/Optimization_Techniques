clear
syms x y;
f(x,y) = x^5 * exp(-x^2-y^2);
fhandle = matlabFunction(f);
e = 0.0001;

%------CONST g--------------------------------------------------------------------- 

g = 0.6;

%First x1
x1 = [0; 0];
[xk , fvalues, dfvalues, k] = newton_algorithm_constant_g(f, x1, e, g);

x = -3 : 0.05 : 3; 
y = -3 : 0.05 : 3;
[X,Y] = meshgrid(x,y);

a = xk(1,:);
b = xk(2,:);

figure
surf (X ,Y , fhandle(X,Y))
shading interp
hold on
plot3(a,b,f(a,b),'.r','markersize',10);
hold on
line = vertcat(a,b,f(a,b));
plot3(line(1,:),line(2,:),line(3,:),'k-');
xlabel('x'); 
ylabel('y'); 
zlabel('f(x,y)');
title('Constant $\gamma_k$ , Initial point (0,0)','Interpreter', 'latex','FontSize',20)
grid on
grid minor

figure
fcontour(fhandle,[-3 3 -3 3],'LevelList', -1:0.1:1);
xlabel('x'); 
ylabel('y'); 
colorbar
hold on
scatter(a,b,10,'r','*');
hold on
plot(a,b,'k-');
title('Constant $\gamma_k$ , Initial point (0,0)','Interpreter', 'latex','FontSize',20)

figure
subplot(2,1,1)
for i=1:1:k
    plot(i,fvalues(i),'ob','MarkerSize', 5)
    hold on
end
xlim([0 k+2])
title('Constant $\gamma_k$ , Initial point (0,0)','Interpreter', 'latex','FontSize',20)
xlabel('Αριθμός επαναλήψεων','FontSize',10) 
ylabel('f(x_k)','FontSize',10) 
subplot(2,1,2)
for i=1:1:k
    plot(i,dfvalues(i),'x','Color','red','MarkerSize', 5)
    hold on
end
xlim([0 k+2])
xlabel('Αριθμός επαναλήψεων','FontSize',10) 
ylabel('\nablaf(x_k)','FontSize',10) 

%Second x1
x1 = [-1; 1];
[xk , fvalues, dfvalues, k] = newton_algorithm_constant_g(f, x1, e, g);

x = -3.5 : 0.05 : 0; 
y = -3 : 0.05 : 3;
[X,Y] = meshgrid(x,y);

a = xk(1,:);
b = xk(2,:);

figure
surf (X ,Y , fhandle(X,Y))
shading interp
hold on
plot3(a,b,f(a,b),'.r','markersize',10);
hold on
line = vertcat(a,b,f(a,b));
plot3(line(1,:),line(2,:),line(3,:),'k-');
xlabel('x'); 
ylabel('y'); 
zlabel('f(x,y)');
title('Constant $\gamma_k$ , Initial point (-1,1)','Interpreter', 'latex','FontSize',20)
grid on
grid minor

figure
fcontour(fhandle,[-3.5 0 -3 3],'LevelList', -1:0.1:0);
xlabel('x'); 
ylabel('y'); 
colorbar
hold on
scatter(a,b,10,'r','*');
hold on
plot(a,b,'k-');
title('Constant $\gamma_k$ , Initial point (-1,1)','Interpreter', 'latex','FontSize',20)

figure
subplot(2,1,1)
for i=1:1:k
    plot(i,fvalues(i),'ob','MarkerSize', 5)
    hold on
end
xlim([0 k+2])
title('Constant $\gamma_k$ , Initial point (-1,1)','Interpreter', 'latex','FontSize',20)
xlabel('Αριθμός επαναλήψεων','FontSize',10) 
ylabel('f(x_k)','FontSize',10) 
subplot(2,1,2)
for i=1:1:k
    plot(i,dfvalues(i),'x','Color','red','MarkerSize', 5)
    hold on
end
xlim([0 k+2])
xlabel('Αριθμός επαναλήψεων','FontSize',10) 
ylabel('\nablaf(x_k)','FontSize',10) 

%Third x1
x1 = [1; -1];
[xk , fvalues, dfvalues, k] = newton_algorithm_constant_g(f, x1, e, g);

x = 0 : 0.05 : 3.5; 
y = -3 : 0.05 : 3;
[X,Y] = meshgrid(x,y);

a = xk(1,:);
b = xk(2,:);

figure
surf (X ,Y , fhandle(X,Y))
shading interp
hold on
plot3(a,b,f(a,b),'.r','markersize',10);
hold on
line = vertcat(a,b,f(a,b));
plot3(line(1,:),line(2,:),line(3,:),'k-');
xlabel('x'); 
ylabel('y'); 
zlabel('f(x,y)');
title('Constant $\gamma_k$ , Initial point (1,-1)','Interpreter', 'latex','FontSize',20)
grid on
grid minor

figure
fcontour(fhandle,[0 3.5 -3 3],'LevelList', 0:0.1:1);
xlabel('x'); 
ylabel('y'); 
colorbar
hold on
scatter(a,b,10,'r','*');
hold on
plot(a,b,'k-');
title('Constant $\gamma_k$ , Initial point (1,-1)','Interpreter', 'latex','FontSize',20)

figure
subplot(2,1,1)
for i=1:1:k
    plot(i,fvalues(i),'ob','MarkerSize', 5)
    hold on
end
xlim([0 k+2])
title('Constant $\gamma_k$ , Initial point (1,-1)','Interpreter', 'latex','FontSize',20)
xlabel('Αριθμός επαναλήψεων','FontSize',10) 
ylabel('f(x_k)','FontSize',10) 
subplot(2,1,2)
for i=1:1:k
    plot(i,dfvalues(i),'x','Color','red','MarkerSize', 5)
    hold on
end
xlim([0 k+2])
xlabel('Αριθμός επαναλήψεων','FontSize',10) 
ylabel('\nablaf(x_k)','FontSize',10) 

%Additional x1
x1 = [-1.5; 0.5];
[xk , fvalues, dfvalues, k] = newton_algorithm_constant_g(f, x1, e, g);

x = -3.5 : 0.05 : 0; 
y = -3 : 0.05 : 3;
[X,Y] = meshgrid(x,y);

a = xk(1,:);
b = xk(2,:);

figure
surf (X ,Y , fhandle(X,Y))
shading interp
hold on
plot3(a,b,f(a,b),'.r','markersize',10);
hold on
line = vertcat(a,b,f(a,b));
plot3(line(1,:),line(2,:),line(3,:),'k-');
xlabel('x'); 
ylabel('y'); 
zlabel('f(x,y)');
title('Constant $\gamma_k$ , Initial point (-1.5,0.5)','Interpreter', 'latex','FontSize',20)
grid on
grid minor

figure
fcontour(fhandle,[-3.5 0 -3 3],'LevelList', -1:0.1:0);
xlabel('x'); 
ylabel('y'); 
colorbar
hold on
scatter(a,b,10,'r','*');
hold on
plot(a,b,'k-');
title('Constant $\gamma_k$ , Initial point (-1.5,0.5)','Interpreter', 'latex','FontSize',20)

figure
subplot(2,1,1)
for i=1:1:k
    plot(i,fvalues(i),'ob','MarkerSize', 5)
    hold on
end
xlim([0 k+2])
title('Constant $\gamma_k$ , Initial point (-1.5,0.5)','Interpreter', 'latex','FontSize',20)
xlabel('Αριθμός επαναλήψεων','FontSize',10) 
ylabel('f(x_k)','FontSize',10) 
subplot(2,1,2)
for i=1:1:k
    plot(i,dfvalues(i),'x','Color','red','MarkerSize', 5)
    hold on
end
xlim([0 k+2])
xlabel('Αριθμός επαναλήψεων','FontSize',10) 
ylabel('\nablaf(x_k)','FontSize',10)



%------MIN g--------------------------------------------------------------------- 
%{
l = 0.005;

%First x1
x1 = [0; 0];
[xk , fvalues, dfvalues, k] = newton_algorithm_min_g(f, x1, e, l);

x = -3 : 0.05 : 3; 
y = -3 : 0.05 : 3;
[X,Y] = meshgrid(x,y);

a = xk(1,:);
b = xk(2,:);

figure
surf (X ,Y , fhandle(X,Y))
shading interp
hold on
plot3(a,b,f(a,b),'.r','markersize',10);
hold on
line = vertcat(a,b,f(a,b));
plot3(line(1,:),line(2,:),line(3,:),'k-');
xlabel('x'); 
ylabel('y'); 
zlabel('f(x,y)');
title('Minimize $\gamma_k$ , Initial point (0,0)','Interpreter', 'latex','FontSize',20)
grid on
grid minor

figure
fcontour(fhandle,[-3 3 -3 3],'LevelList', -1:0.1:1);
xlabel('x'); 
ylabel('y'); 
colorbar
hold on
scatter(a,b,10,'r','*');
hold on
plot(a,b,'k-');
title('Minimize $\gamma_k$ , Initial point (0,0)','Interpreter', 'latex','FontSize',20)

figure
subplot(2,1,1)
for i=1:1:k
    plot(i,fvalues(i),'ob','MarkerSize', 5)
    hold on
end
xlim([0 k+2])
title('Minimize $\gamma_k$ , Initial point (0,0)','Interpreter', 'latex','FontSize',20)
xlabel('Αριθμός επαναλήψεων','FontSize',10) 
ylabel('f(x_k)','FontSize',10) 
subplot(2,1,2)
for i=1:1:k
    plot(i,dfvalues(i),'x','Color','red','MarkerSize', 5)
    hold on
end
xlim([0 k+2])
xlabel('Αριθμός επαναλήψεων','FontSize',10) 
ylabel('\nablaf(x_k)','FontSize',10)


%Second x1
x1 = [-1; 1];
[xk , fvalues, dfvalues, k] = newton_algorithm_min_g(f, x1, e, l);

x = -3.5 : 0.05 : 0; 
y = -3 : 0.05 : 3;
[X,Y] = meshgrid(x,y);

a = xk(1,:);
b = xk(2,:);

figure
surf (X ,Y , fhandle(X,Y))
shading interp
hold on
plot3(a,b,f(a,b),'.r','markersize',10);
hold on
line = vertcat(a,b,f(a,b));
plot3(line(1,:),line(2,:),line(3,:),'k-');
xlabel('x'); 
ylabel('y'); 
zlabel('f(x,y)');
title('Minimize $\gamma_k$ , Initial point (-1,1)','Interpreter', 'latex','FontSize',20)
grid on
grid minor

figure
fcontour(fhandle,[-3.5 0 -3 3],'LevelList', -1:0.1:0);
xlabel('x'); 
ylabel('y'); 
colorbar
hold on
scatter(a,b,10,'r','*');
hold on
plot(a,b,'k-');
title('Minimize $\gamma_k$ , Initial point (-1,1)','Interpreter', 'latex','FontSize',20)

figure
subplot(2,1,1)
for i=1:1:k
    plot(i,fvalues(i),'ob','MarkerSize', 5)
    hold on
end
xlim([0 k+2])
title('Minimize $\gamma_k$ , Initial point (-1,1)','Interpreter', 'latex','FontSize',20)
xlabel('Αριθμός επαναλήψεων','FontSize',10) 
ylabel('f(x_k)','FontSize',10) 
subplot(2,1,2)
for i=1:1:k
    plot(i,dfvalues(i),'x','Color','red','MarkerSize', 5)
    hold on
end
xlim([0 k+2])
xlabel('Αριθμός επαναλήψεων','FontSize',10) 
ylabel('\nablaf(x_k)','FontSize',10) 

%Third x1
x1 = [1; -1];
[xk , fvalues, dfvalues, k] = newton_algorithm_min_g(f, x1, e, l);

x = 0 : 0.05 : 3.5; 
y = -3 : 0.05 : 3;
[X,Y] = meshgrid(x,y);

a = xk(1,:);
b = xk(2,:);

figure
surf (X ,Y , fhandle(X,Y))
shading interp
hold on
plot3(a,b,f(a,b),'.r','markersize',10);
hold on
line = vertcat(a,b,f(a,b));
plot3(line(1,:),line(2,:),line(3,:),'k-');
xlabel('x'); 
ylabel('y'); 
zlabel('f(x,y)');
title('Minimize $\gamma_k$ , Initial point (1,-1)','Interpreter', 'latex','FontSize',20)
grid on
grid minor

figure
fcontour(fhandle,[0 3.5 -3 3],'LevelList', -1.5:0.1:1.5);
xlabel('x'); 
ylabel('y'); 
colorbar
hold on
scatter(a,b,10,'r','*');
hold on
plot(a,b,'k-');
title('Minimize $\gamma_k$ , Initial point (1,-1)','Interpreter', 'latex','FontSize',20)

figure
subplot(2,1,1)
for i=1:1:k
    plot(i,fvalues(i),'ob','MarkerSize', 5)
    hold on
end
xlim([0 k+2])
title('Minimize $\gamma_k$ , Initial point (1,-1)','Interpreter', 'latex','FontSize',20)
xlabel('Αριθμός επαναλήψεων','FontSize',10) 
ylabel('f(x_k)','FontSize',10) 
subplot(2,1,2)
for i=1:1:k
    plot(i,dfvalues(i),'x','Color','red','MarkerSize', 5)
    hold on
end
xlim([0 k+2])
xlabel('Αριθμός επαναλήψεων','FontSize',10) 
ylabel('\nablaf(x_k)','FontSize',10)

%Additional x1
x1 = [-1.5; 0.5];
[xk , fvalues, dfvalues, k] = newton_algorithm_min_g(f, x1, e, l);

x = -3.5 : 0.05 : 0; 
y = -3 : 0.05 : 3;
[X,Y] = meshgrid(x,y);

a = xk(1,:);
b = xk(2,:);

figure
surf (X ,Y , fhandle(X,Y))
shading interp
hold on
plot3(a,b,f(a,b),'.r','markersize',10);
hold on
line = vertcat(a,b,f(a,b));
plot3(line(1,:),line(2,:),line(3,:),'k-');
xlabel('x'); 
ylabel('y'); 
zlabel('f(x,y)');
title('Minimize $\gamma_k$ , Initial point (-1.5,0.5)','Interpreter', 'latex','FontSize',20)
grid on
grid minor

figure
fcontour(fhandle,[-3.5 0 -3 3],'LevelList', -1:0.1:0);
xlabel('x'); 
ylabel('y'); 
colorbar
hold on
scatter(a,b,10,'r','*');
hold on
plot(a,b,'k-');
title('Minimize $\gamma_k$ , Initial point (-1.5,0.5)','Interpreter', 'latex','FontSize',20)

figure
subplot(2,1,1)
for i=1:1:k
    plot(i,fvalues(i),'ob','MarkerSize', 5)
    hold on
end
xlim([0 k+2])
title('Minimize $\gamma_k$ , Initial point (-1.5,0.5)','Interpreter', 'latex','FontSize',20)
xlabel('Αριθμός επαναλήψεων','FontSize',10) 
ylabel('f(x_k)','FontSize',10) 
subplot(2,1,2)
for i=1:1:k
    plot(i,dfvalues(i),'x','Color','red','MarkerSize', 5)
    hold on
end
xlim([0 k+2])
xlabel('Αριθμός επαναλήψεων','FontSize',10) 
ylabel('\nablaf(x_k)','FontSize',10)
%}


%------ARMIJO g---------------------------------------------------------------------
%{
%First x1
x1 = [0; 0];
[xk , fvalues, dfvalues, k] = newton_algorithm_armijo(f, x1, e);

x = -3 : 0.05 : 3; 
y = -3 : 0.05 : 3;
[X,Y] = meshgrid(x,y);

a = xk(1,:);
b = xk(2,:);

figure
surf (X ,Y , fhandle(X,Y))
shading interp
hold on
plot3(a,b,f(a,b),'.r','markersize',10);
hold on
line = vertcat(a,b,f(a,b));
plot3(line(1,:),line(2,:),line(3,:),'k-');
xlabel('x'); 
ylabel('y'); 
zlabel('f(x,y)');
title('Armijo Rule for $\gamma_k$ , Initial point (0,0)','Interpreter', 'latex','FontSize',20)
grid on
grid minor

figure
fcontour(fhandle,[-3 3 -3 3],'LevelList', -1:0.1:1);
xlabel('x'); 
ylabel('y'); 
colorbar
hold on
scatter(a,b,10,'r','*');
hold on
plot(a,b,'k-');
title('Armijo Rule for $\gamma_k$ , Initial point (0,0)','Interpreter', 'latex','FontSize',20)

figure
subplot(2,1,1)
for i=1:1:k
    plot(i,fvalues(i),'ob','MarkerSize', 5)
    hold on
end
xlim([0 k+2])
title('Armijo Rule for $\gamma_k$ , Initial point (0,0)','Interpreter', 'latex','FontSize',20)
xlabel('Αριθμός επαναλήψεων','FontSize',10) 
ylabel('f(x_k)','FontSize',10) 
subplot(2,1,2)
for i=1:1:k
    plot(i,dfvalues(i),'x','Color','red','MarkerSize', 5)
    hold on
end
xlim([0 k+2])
xlabel('Αριθμός επαναλήψεων','FontSize',10) 
ylabel('\nablaf(x_k)','FontSize',10)


%Second x1
x1 = [-1; 1];
[xk , fvalues, dfvalues, k] = newton_algorithm_armijo(f, x1, e);

x = -3.5 : 0.05 : 0; 
y = -3 : 0.05 : 3;
[X,Y] = meshgrid(x,y);

a = xk(1,:);
b = xk(2,:);

figure
surf (X ,Y , fhandle(X,Y))
shading interp
hold on
plot3(a,b,f(a,b),'.r','markersize',10);
hold on
line = vertcat(a,b,f(a,b));
plot3(line(1,:),line(2,:),line(3,:),'k-');
xlabel('x'); 
ylabel('y'); 
zlabel('f(x,y)');
title('Armijo Rule for $\gamma_k$ , Initial point (-1,1)','Interpreter', 'latex','FontSize',20)
grid on
grid minor

figure
fcontour(fhandle,[-3.5 0 -3 3],'LevelList', -1:0.1:0);
xlabel('x'); 
ylabel('y'); 
colorbar
hold on
scatter(a,b,10,'r','*');
hold on
plot(a,b,'k-');
title('Armijo Rule for $\gamma_k$ , Initial point (-1,1)','Interpreter', 'latex','FontSize',20)

figure
subplot(2,1,1)
for i=1:1:k
    plot(i,fvalues(i),'ob','MarkerSize', 5)
    hold on
end
xlim([0 k+2])
title('Armijo Rule for $\gamma_k$ , Initial point (-1,1)','Interpreter', 'latex','FontSize',20)
xlabel('Αριθμός επαναλήψεων','FontSize',10) 
ylabel('f(x_k)','FontSize',10) 
subplot(2,1,2)
for i=1:1:k
    plot(i,dfvalues(i),'x','Color','red','MarkerSize', 5)
    hold on
end
xlim([0 k+2])
xlabel('Αριθμός επαναλήψεων','FontSize',10) 
ylabel('\nablaf(x_k)','FontSize',10) 

%Third x1
x1 = [1; -1];
[xk , fvalues, dfvalues, k] = newton_algorithm_armijo(f, x1, e);

x = 0 : 0.05 : 3.5; 
y = -3 : 0.05 : 3;
[X,Y] = meshgrid(x,y);

a = xk(1,:);
b = xk(2,:);

figure
surf (X ,Y , fhandle(X,Y))
shading interp
hold on
plot3(a,b,f(a,b),'.r','markersize',10);
hold on
line = vertcat(a,b,f(a,b));
plot3(line(1,:),line(2,:),line(3,:),'k-');
xlabel('x'); 
ylabel('y'); 
zlabel('f(x,y)');
title('Armijo Rule for $\gamma_k$ , Initial point (1,-1)','Interpreter', 'latex','FontSize',20)
grid on
grid minor

figure
fcontour(fhandle,[0 3.5 -3 3],'LevelList', -1.5:0.1:1.5);
xlabel('x'); 
ylabel('y'); 
colorbar
hold on
scatter(a,b,10,'r','*');
hold on
plot(a,b,'k-');
title('Armijo Rule for $\gamma_k$ , Initial point (1,-1)','Interpreter', 'latex','FontSize',20)

figure
subplot(2,1,1)
for i=1:1:k
    plot(i,fvalues(i),'ob','MarkerSize', 5)
    hold on
end
xlim([0 k+2])
title('Armijo Rule for $\gamma_k$ , Initial point (1,-1)','Interpreter', 'latex','FontSize',20)
xlabel('Αριθμός επαναλήψεων','FontSize',10) 
ylabel('f(x_k)','FontSize',10) 
subplot(2,1,2)
for i=1:1:k
    plot(i,dfvalues(i),'x','Color','red','MarkerSize', 5)
    hold on
end
xlim([0 k+2])
xlabel('Αριθμός επαναλήψεων','FontSize',10) 
ylabel('\nablaf(x_k)','FontSize',10) 

%Additional x1
x1 = [-1.5; 0.5];
[xk , fvalues, dfvalues, k] = newton_algorithm_armijo(f, x1, e);

x = -3.5 : 0.05 : 0; 
y = -3 : 0.05 : 3;
[X,Y] = meshgrid(x,y);

a = xk(1,:);
b = xk(2,:);

figure
surf (X ,Y , fhandle(X,Y))
shading interp
hold on
plot3(a,b,f(a,b),'.r','markersize',10);
hold on
line = vertcat(a,b,f(a,b));
plot3(line(1,:),line(2,:),line(3,:),'k-');
xlabel('x'); 
ylabel('y'); 
zlabel('f(x,y)');
title('Armijo Rule for $\gamma_k$ , Initial point (-1.5,0.5)','Interpreter', 'latex','FontSize',20)
grid on
grid minor

figure
fcontour(fhandle,[-3.5 0 -3 3],'LevelList', -1:0.1:0);
xlabel('x'); 
ylabel('y'); 
colorbar
hold on
scatter(a,b,10,'r','*');
hold on
plot(a,b,'k-');
title('Armijo Rule for $\gamma_k$ , Initial point (-1.5,0.5)','Interpreter', 'latex','FontSize',20)

figure
subplot(2,1,1)
for i=1:1:k
    plot(i,fvalues(i),'ob','MarkerSize', 5)
    hold on
end
xlim([0 k+2])
title('Armijo Rule for $\gamma_k$ , Initial point (-1.5,0.5)','Interpreter', 'latex','FontSize',20)
xlabel('Αριθμός επαναλήψεων','FontSize',10) 
ylabel('f(x_k)','FontSize',10) 
subplot(2,1,2)
for i=1:1:k
    plot(i,dfvalues(i),'x','Color','red','MarkerSize', 5)
    hold on
end
xlim([0 k+2])
xlabel('Αριθμός επαναλήψεων','FontSize',10) 
ylabel('\nablaf(x_k)','FontSize',10)
%}
