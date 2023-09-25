syms x;
f1(x) = (x-2)^2 + x*log(x+3);
f2(x) = 5^x + (2 - cos(x))^2;
f3(x) = exp(x)*(x^3-1) + (x-1)*sin(x);

a1 = -1;
b1 = 3;

%----------------------------------------------------------------------------------------------------
% CONSTANT l
%----------------------------------------------------------------------------------------------------
disp('constant l - begin')
l = 0.01;
e_values = zeros(1,1);
k_f1_values = zeros(1,1);
k_f2_values = zeros(1,1);
k_f3_values = zeros(1,1);
count = 1;

for e = linspace(0.00009,0.0049,50) 
    disp(count);
    [~ , ~ , k_f1_values(count)] = bisection_algorithm(f1 , e , l , a1 , b1);
    [~ , ~ , k_f2_values(count)] = bisection_algorithm(f2 , e , l , a1 , b1);
    [~ , ~ , k_f3_values(count)] = bisection_algorithm(f3 , e , l , a1 , b1);
    e_values(count) = e;
    count = count +1;
end

figure
subplot(3,1,1)
plot(e_values,2*(k_f1_values-1))
title('$f_1(x)$ = $(x-2)^2$ + $x ln(x+3)$','Interpreter', 'latex','FontSize',20)
xlabel('Σταθερά \epsilon','FontSize',10) 
ylabel('Yπολογισμοί Αντικειμενικής Συνάρτησης','FontSize',7) 

subplot(3,1,2)
plot(e_values,2*(k_f2_values-1))
title('$f_2(x)$ = $5^x$ + $(2 - cos(x))^2$','Interpreter', 'latex','FontSize',20)
xlabel('Σταθερά \epsilon','FontSize',10) 
ylabel('Yπολογισμοί Αντικειμενικής Συνάρτησης','FontSize',7) 

subplot(3,1,3)
plot(e_values,2*(k_f3_values-1))
title('$f_3(x)$ = $e^x (x^3-1)$ + $(x-1) sin(x)$','Interpreter', 'latex','FontSize',20)
xlabel('Σταθερά \epsilon','FontSize',10) 
ylabel('Yπολογισμοί Αντικειμενικής Συνάρτησης','FontSize',7) 

disp('constant l - end')

%----------------------------------------------------------------------------------------------------
%CONSTANT e
%----------------------------------------------------------------------------------------------------
disp('constant e - begin')
e = 0.001;
l_values = zeros(1,1);
k_f1_values2 = zeros(1,1);
k_f2_values2 = zeros(1,1);
k_f3_values2 = zeros(1,1);
count = 1;

for l = linspace(0.0021,0.1,100)
    disp(count);
    [~ , ~ , k_f1_values2(count)] = bisection_algorithm(f1 , e , l , a1 , b1);
    [~ , ~ , k_f2_values2(count)] = bisection_algorithm(f2 , e , l , a1 , b1);
    [~ , ~ , k_f3_values2(count)] = bisection_algorithm(f3 , e , l , a1 , b1);
    l_values(count) = l;
    count = count +1;
end

figure
subplot(3,1,1)
plot(l_values,2*(k_f1_values2-1))
title('$f_1(x)$ = $(x-2)^2$ + $x ln(x+3)$','Interpreter', 'latex','FontSize',20)
xlabel('Τελικό εύρος διαστήματος αναζήτησης l','FontSize',10) 
ylabel('Yπολογισμοί Αντικειμενικής Συνάρτησης','FontSize',7) 

subplot(3,1,2)
plot(l_values,2*(k_f2_values2-1))
title('$f_2(x)$ = $5^x$ + $(2 - cos(x))^2$','Interpreter', 'latex','FontSize',20)
xlabel('Τελικό εύρος διαστήματος αναζήτησης l','FontSize',10) 
ylabel('Yπολογισμοί Αντικειμενικής Συνάρτησης','FontSize',7) 

subplot(3,1,3)
plot(l_values,2*(k_f3_values2-1))
title('$f_3(x)$ = $e^x (x^3-1)$ + $(x-1) sin(x)$','Interpreter', 'latex','FontSize',20)
xlabel('Τελικό εύρος διαστήματος αναζήτησης l','FontSize',10) 
ylabel('Yπολογισμοί Αντικειμενικής Συνάρτησης','FontSize',7) 

disp('constant e - end')

%-----------------------------------------------------------------------------------------------
% Plot (k,ak) and (k,bk) for 4 l values
%-----------------------------------------------------------------------------------------------
l1 = 0.0021;
l2 = 0.005;
l3 = 0.05;
l4 = 0.1;

disp('Function 1 - begin')
[ak_1 , bk_1 , k_1] = bisection_algorithm(f1 , e , l1 , a1 , b1);
[ak_2 , bk_2 , k_2] = bisection_algorithm(f1 , e , l2 , a1 , b1);
[ak_3 , bk_3 , k_3] = bisection_algorithm(f1 , e , l3 , a1 , b1);
[ak_4 , bk_4 , k_4] = bisection_algorithm(f1 , e , l4 , a1 , b1);

figure
subplot(4,1,1)
for i=1:1:k_1
    plot(i,ak_1(i),'ob','MarkerSize', 5)
    hold on
    plot(i,bk_1(i),'x','Color','red','MarkerSize', 5)
end
xlim([0 20])
title('$f_1(x)$ = $(x-2)^2$ + $x ln(x+3)$','Interpreter', 'latex','FontSize',20)
xlabel('Αριθμός επαναλήψεων','FontSize',10) 
ylabel('[a_k,b_k]','FontSize',10) 
legend('a_k','b_k')
txt = 'l = 0.0021';
text(19.1,2.5,txt,'HorizontalAlignment','right','FontSize', 10)

subplot(4,1,2)
for i=1:1:k_2
    plot(i,ak_2(i),'ob','MarkerSize', 5)
    hold on
    plot(i,bk_2(i),'x','Color','red','MarkerSize', 5)
end
xlim([0 20])
xlabel('Αριθμός επαναλήψεων','FontSize',10) 
ylabel('[a_k,b_k]','FontSize',10) 
legend('a_k','b_k')
txt = 'l = 0.005';
text(19.1,2.5,txt,'HorizontalAlignment','right','FontSize', 10)

subplot(4,1,3)
for i=1:1:k_3
    plot(i,ak_3(i),'ob','MarkerSize', 5)
    hold on
    plot(i,bk_3(i),'x','Color','red','MarkerSize', 5)
end
xlim([0 20])
xlabel('Αριθμός επαναλήψεων','FontSize',10) 
ylabel('[a_k,b_k]','FontSize',10) 
legend('a_k','b_k')
txt = 'l = 0.05';
text(19.1,2.5,txt,'HorizontalAlignment','right','FontSize', 10)

subplot(4,1,4)
for i=1:1:k_4
    plot(i,ak_4(i),'ob','MarkerSize', 5)
    hold on
    plot(i,bk_4(i),'x','Color','red','MarkerSize', 5)
end
xlim([0 20])
xlabel('Αριθμός επαναλήψεων','FontSize',10) 
ylabel('[a_k,b_k]','FontSize',10)
legend('a_k','b_k')
txt = 'l = 0.1';
text(19.1,2.5,txt,'HorizontalAlignment','right','FontSize', 10)


%-------------------------------------------------------------------------------------
disp('Function 2 - begin')
[ak_1 , bk_1 , k_1] = bisection_algorithm(f2 , e , l1 , a1 , b1);
[ak_2 , bk_2 , k_2] = bisection_algorithm(f2 , e , l2 , a1 , b1);
[ak_3 , bk_3 , k_3] = bisection_algorithm(f2 , e , l3 , a1 , b1);
[ak_4 , bk_4 , k_4] = bisection_algorithm(f2 , e , l4 , a1 , b1);

figure
subplot(4,1,1)
for i=1:1:k_1
    plot(i,ak_1(i),'ob','MarkerSize', 5)
    hold on
    plot(i,bk_1(i),'x','Color','red','MarkerSize', 5)
end
xlim([0 20])
title('$f_2(x)$ = $5^x$ + $(2 - cos(x))^2$','Interpreter', 'latex','FontSize',20)
xlabel('Αριθμός επαναλήψεων','FontSize',10) 
ylabel('[a_k,b_k]','FontSize',10) 
legend('a_k','b_k')
txt = 'l = 0.0021';
text(19.1,2.5,txt,'HorizontalAlignment','right','FontSize', 10)

subplot(4,1,2)
for i=1:1:k_2
    plot(i,ak_2(i),'ob','MarkerSize', 5)
    hold on
    plot(i,bk_2(i),'x','Color','red','MarkerSize', 5)
end
xlim([0 20])
xlabel('Αριθμός επαναλήψεων','FontSize',10) 
ylabel('[a_k,b_k]','FontSize',10) 
legend('a_k','b_k')
txt = 'l = 0.005';
text(19.1,2.5,txt,'HorizontalAlignment','right','FontSize', 10)

subplot(4,1,3)
for i=1:1:k_3
    plot(i,ak_3(i),'ob','MarkerSize', 5)
    hold on
    plot(i,bk_3(i),'x','Color','red','MarkerSize', 5)
end
xlim([0 20])
xlabel('Αριθμός επαναλήψεων','FontSize',10) 
ylabel('[a_k,b_k]','FontSize',10) 
legend('a_k','b_k')
txt = 'l = 0.05';
text(19.1,2.5,txt,'HorizontalAlignment','right','FontSize', 10)

subplot(4,1,4)
for i=1:1:k_4
    plot(i,ak_4(i),'ob','MarkerSize', 5)
    hold on
    plot(i,bk_4(i),'x','Color','red','MarkerSize', 5)
end
xlim([0 20])
xlabel('Αριθμός επαναλήψεων','FontSize',10) 
ylabel('[a_k,b_k]','FontSize',10) 
legend('a_k','b_k')
txt = 'l = 0.1';
text(19.1,2.5,txt,'HorizontalAlignment','right','FontSize', 10)


%-------------------------------------------------------------------------------------
disp('Function 3 - begin')
[ak_1 , bk_1 , k_1] = bisection_algorithm(f3 , e , l1 , a1 , b1);
[ak_2 , bk_2 , k_2] = bisection_algorithm(f3 , e , l2 , a1 , b1);
[ak_3 , bk_3 , k_3] = bisection_algorithm(f3 , e , l3 , a1 , b1);
[ak_4 , bk_4 , k_4] = bisection_algorithm(f3 , e , l4 , a1 , b1);

figure
subplot(4,1,1)
for i=1:1:k_1
    plot(i,ak_1(i),'ob','MarkerSize', 5)
    hold on
    plot(i,bk_1(i),'x','Color','red','MarkerSize', 5)
end
xlim([0 20])
title('$f_3(x)$ = $e^x (x^3-1)$ + $(x-1) sin(x)$','Interpreter', 'latex','FontSize',20)
xlabel('Αριθμός επαναλήψεων','FontSize',10) 
ylabel('[a_k,b_k]','FontSize',10) 
legend('a_k','b_k')
txt = 'l = 0.0021';
text(19.1,2.5,txt,'HorizontalAlignment','right','FontSize', 10)

subplot(4,1,2)
for i=1:1:k_2
    plot(i,ak_2(i),'ob','MarkerSize', 5)
    hold on
    plot(i,bk_2(i),'x','Color','red','MarkerSize', 5)
end
xlim([0 20])
xlabel('Αριθμός επαναλήψεων','FontSize',10) 
ylabel('[a_k,b_k]','FontSize',10) 
legend('a_k','b_k')
txt = 'l = 0.005';
text(19.1,2.5,txt,'HorizontalAlignment','right','FontSize', 10)

subplot(4,1,3)
for i=1:1:k_3
    plot(i,ak_3(i),'ob','MarkerSize', 5)
    hold on
    plot(i,bk_3(i),'x','Color','red','MarkerSize', 5)
end
xlim([0 20])
xlabel('Αριθμός επαναλήψεων','FontSize',10) 
ylabel('[a_k,b_k]','FontSize',10) 
legend('a_k','b_k')
txt = 'l = 0.05';
text(19.1,2.5,txt,'HorizontalAlignment','right','FontSize', 10)

subplot(4,1,4)
for i=1:1:k_4
    plot(i,ak_4(i),'ob','MarkerSize', 5)
    hold on
    plot(i,bk_4(i),'x','Color','red','MarkerSize', 5)
end
xlim([0 20])
xlabel('Αριθμός επαναλήψεων','FontSize',10) 
ylabel('[a_k,b_k]','FontSize',10) 
legend('a_k','b_k')
txt = 'l = 0.1';
text(19.1,2.5,txt,'HorizontalAlignment','right','FontSize', 10)
