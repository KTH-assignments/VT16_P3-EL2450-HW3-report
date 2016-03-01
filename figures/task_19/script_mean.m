clear;

p_1 = dlmread('1.csv', ';', 1, 0);
p_2 = dlmread('2.csv', ';', 1, 0);
p_3 = dlmread('3.csv', ';', 1, 0);
p_4 = dlmread('4.csv', ';', 1, 0);
p_5 = dlmread('5.csv', ';', 1, 0);


% Plot distance
[d_1, p_11] = distance(p_1);
[d_2, p_21] = distance(p_2);
[d_3, p_31] = distance(p_3);
[d_4, p_41] = distance(p_4);
[d_5, p_51] = distance(p_5);

sz_d = [size(d_1,1), size(d_2,1), size(d_3,1), size(d_4,1), size(d_5,1)];
[max_sz_d, max_id] = max(sz_d);

d_11 = padarray(d_1, max_sz_d - size(d_1,1), d_1(end), 'post');
d_21 = padarray(d_2, max_sz_d - size(d_2,1), d_2(end), 'post');
d_31 = padarray(d_3, max_sz_d - size(d_3,1), d_3(end), 'post');
d_41 = padarray(d_4, max_sz_d - size(d_4,1), d_4(end), 'post');
d_51 = padarray(d_5, max_sz_d - size(d_5,1), d_5(end), 'post');


figure
d = 0.2*(d_11 + d_21 + d_31 + d_41 + d_51);
d_time = eval(['p_', int2str(max_id), int2str(1)]);
plot(d_time(:,1), 1.7203 - d);
grid;







a_1 = angle(p_1);
a_2 = angle(p_2);
a_3 = angle(p_3);
a_4 = angle(p_4);
a_5 = angle(p_5);


sz_a = [size(a_1,1), size(a_2,1), size(a_3,1), size(a_4,1), size(a_5,1)];
max_sz_a = max(sz_a);

a_11 = padarray(a_1, max_sz_a - size(a_1,1), a_1(end), 'post');
a_21 = padarray(a_2, max_sz_a - size(a_2,1), a_2(end), 'post');
a_31 = padarray(a_3, max_sz_a - size(a_3,1), a_3(end), 'post');
a_41 = padarray(a_4, max_sz_a - size(a_4,1), a_4(end), 'post');
a_51 = padarray(a_5, max_sz_a - size(a_5,1), a_5(end), 'post');

figure
a = 0.2*(a_11(:,4) + a_21(:,4) + a_31(:,4) + a_41(:,4) + a_51(:,4));
a_time = eval(['a_', int2str(max_id), int2str(1)]);
plot(a_time(:,1), 102.4204 - a);
grid;

%figure
%plotyy(d_time(:,1),1.7203 - d,  a_time(:,1), 102.4204 - a);
%grid