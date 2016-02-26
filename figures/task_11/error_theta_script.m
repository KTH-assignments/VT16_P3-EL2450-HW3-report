p = dlmread('1.csv', ';', 1, 0);

nz = find(p(:,4));

p = p(nz-1:end,:);

t0 = p(1,1);
p(:,1) = (p(:,1) - t0) * 10^(-6);

theta_R = atan2(1.68, -0.37) * 180 / pi;
plot(p(:, 1), theta_R - p(:,4));
grid;