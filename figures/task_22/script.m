close all;
clear;

p = dlmread('7.csv', ';', 1, 0);

% Plot distance
[d, p_1] = distance(p);

plot(d(:,1));
grid;
%matlab2tikz('dist.tex');






a = angle(p);
figure
plot(a(:,1),  a(:,4));
grid;
%matlab2tikz('angle.tex');

