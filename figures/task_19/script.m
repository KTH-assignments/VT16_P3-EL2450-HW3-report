p_1 = dlmread('1.csv', ';', 1, 0);
p_2 = dlmread('2.csv', ';', 1, 0);
p_3 = dlmread('3.csv', ';', 1, 0);
p_4 = dlmread('4.csv', ';', 1, 0);
p_5 = dlmread('5.csv', ';', 1, 0);


% Plot distance
[d_1, p_11] = distance(p_1);
[d_2, p_21] = distance(p_2);
[d_3, p_32] = distance(p_3);
[d_4, p_42] = distance(p_4);
[d_5, p_52] = distance(p_5);


plot(p_11(:,1), 1.7203 - d_1)
hold on
plot(p_21(:,1), 1.7203 - d_2)
hold on
plot(p_32(:,1), 1.7203 - d_3)
hold on
plot(p_42(:,1), 1.7203 - d_4)
hold on
plot(p_52(:,1), 1.7203 - d_5)
hold off
grid;



% Plot angles
p_13 = angle(p_1);
p_23 = angle(p_2);
p_33 = angle(p_3);
p_43 = angle(p_4);
p_53 = angle(p_5);



figure
plot(p_13(:,1), 102.4204 - p_13(:,4))
hold on
plot(p_23(:,1), 102.4204 - p_23(:,4))
hold on
plot(p_33(:,1), 102.4204 - p_33(:,4))
hold on
plot(p_43(:,1), 102.4204 - p_43(:,4))
hold on
plot(p_53(:,1), 102.4204 - p_53(:,4))
hold off
grid;
