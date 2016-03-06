close all;
clear;

p = dlmread('7.csv', ';', 1, 0);

p_21 = dlmread('7.csv', ';', [1 0 4398 3]);
p_15 = dlmread('7.csv', ';', [4398 0 7871 3]);
p_53 = dlmread('7.csv', ';', 7871, 0);

a_g_21 = atan2(0, 1.18 + 0.37) * 180 / pi;
a_g_15 = atan2(0.23 - 1.68, 1.09 + 0.37) * 180 / pi;
a_g_53 = atan2(-0.23 + 1.68, 2.55 - 1.09) * 180 / pi;

% Plot distance
a = angle(p);
a_21 = angle(p_21);
a_15 = angle(p_15);
a_53 = angle(p_53);

% a(:,4) = a(:,4) + 180;
a_21(:,4) = a_21(:,4) - 180;
a_15(:,4) = a_15(:,4);
a_53(:,4) = a_53(:,4);


plot(a(:,1), a(:,4));
grid;
matlab2tikz('e_angle.tex')


figure;
plot(a_21(:,1), a_g_21 - a_21(:,4));
grid;
% matlab2tikz('e_angle01_2_1.tex')

figure;
plot(a_15(:,1), a_g_15 - a_15(:,4));
grid;
% matlab2tikz('e_angle02_1_5.tex')


figure;
plot(a_53(:,1), a_g_53 - a_53(:,4));
grid;
% matlab2tikz('e_angle03_5_3.tex')