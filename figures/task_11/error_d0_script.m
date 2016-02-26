p = dlmread('1.csv', ';', 1, 0);

nz = find(p(:,4));

p = p(nz-1:end,:);

t0 = p(1,1);
p(:,1) = (p(:,1) - t0) * 10^(-6);

d0 = -cos(p(:,4)) .* p(:,2) - sin(p(:,4)) .* p(:,3); 

plot(p(:, 1), d0);
grid;