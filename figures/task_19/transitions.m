clear;

p_1 = dlmread('2.csv', ';', 1, 0);
d = p_1(:,2) .* cos(p_1(:,4)*pi/180) + p_1(:,3) .* sin(p_1(:,4)*pi/180);
diff_d = diff(d);
diff_d = (diff_d ~= 0);

diff_a = diff(p_1(:,4));
diff_a = -(diff_a ~= 0);




axis([find(diff_a, 1, 'first') find(diff_d == 1, 1, 'last')+100 -1.05 1.05])

%matlab2tikz('transitions.tex')