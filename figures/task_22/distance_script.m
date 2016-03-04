close all;
clear;

p = dlmread('7.csv', ';', 1, 0);

p_21 = dlmread('7.csv', ';', [1 0 4398 3]);
p_15 = dlmread('7.csv', ';', [4398 0 7871 3]);
p_53 = dlmread('7.csv', ';', 7871, 0);


m=[
    -0.37, 1.68; 
    1.09, 1.68; 
    2.55, 1.68; 
    -0.37, 0.23; 
    1.09, 0.23; 
    2.55, 0.23;
    -0.37, -1.22; 
    1.09, -1.22; 
    2.55, -1.22];


d_21_ = sqrt((m(1,1)-m(2,1))^2 + (m(1,2)-m(2,2))^2);
d_15_ = sqrt((m(5,1)-m(1,1))^2 + (m(5,2)-m(1,2))^2);
d_53_ = sqrt((m(5,1)-m(3,1))^2 + (m(5,2)-m(3,2))^2);

% Plot distance
% [d, p_1] = distance(p);
[d_21, p_1_21] = distance(p_21, m(1,1), m(1,2));
[d_15, p_1_15] = distance(p_15, m(5,1), m(5,2));
[d_53, p_1_53] = distance(p_53, m(3,1), m(3,2));

% plot(p_1(:,1), d(:,1));
% grid;
% matlab2tikz('e_dist.tex')


figure;
plot(p_1_21(:,1), d_21(:,1));
grid;
matlab2tikz('e_dist01_2_1.tex')

figure;
plot(p_1_15(:,1), d_15(:,1));
grid;
matlab2tikz('e_dist02_1_5.tex')


figure;
plot(p_1_53(:,1), d_53(:,1));
grid;
matlab2tikz('e_dist03_5_3.tex')