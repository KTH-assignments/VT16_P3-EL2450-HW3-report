p = dlmread('4.csv', ';', 1, 0);

nz = find(p(:,2));

p = p(nz-1:end,:);

t0 = p(1,1);
p(:,1) = (p(:,1) - t0) * 10^(-6);

theta_R = 0;

dg = sin(theta_R) * (p(:,2) + cos(p(:,4))) - cos(theta_R) * (p(:,3) + sin(p(:,3)));

plot(p(:, 1), dg);
grid;