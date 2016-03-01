clear;

p_1 = dlmread('2.csv', ';', 1, 0);

angles = p_1(:,4);

d = abs(102.4204 - angles) <=2;

plot(d)

