p = dlmread('5.csv', ';', 1, 0);

nz = find(p(:,2));

p = p(nz-1:end,:);

t0 = p(1,1);
p(:,1) = (p(:,1) - t0) * 10^(-6);

theta_R = 0;

dg = cos(theta_R) * (1-p(:,2)) + sin(theta_R) * (0-p(:,3));


plot(p(:, 1), p(:,2));
grid
figure
plot(p(:, 1), dg);
grid;