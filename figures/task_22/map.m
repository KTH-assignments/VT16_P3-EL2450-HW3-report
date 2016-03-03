close all;
clear;

p = dlmread('7.csv', ';', 1, 0);

% Plot distance

t0 = p(1,1);
p(:,1) = (p(:,1) - t0) * 10^(-6);


t = p(:,1);
x = p(:,2); 
y = p(:,3);
a = p(:,4);


plot(x,y);
hold on

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

plot(m(:,1), m(:,2), 'b*')
axis([-0.85 3 -1.8 2])
%grid

offset_x = 0.01;
offset_y = 0.15;


text(m(1,1)-offset_x, m(1,2)-offset_y, '1');
text(m(2,1)-offset_x, m(2,2)-offset_y, '2');
text(m(3,1)-offset_x, m(3,2)-offset_y, '3');
text(m(4,1)-offset_x, m(4,2)-offset_y, '4');
text(m(5,1)-offset_x, m(5,2)-offset_y, '5');
text(m(6,1)-offset_x, m(6,2)-offset_y, '6');
text(m(7,1)-offset_x, m(7,2)-offset_y, '7');
text(m(8,1)-offset_x, m(8,2)-offset_y, '8');
text(m(9,1)-offset_x, m(9,2)-offset_y, '9');
