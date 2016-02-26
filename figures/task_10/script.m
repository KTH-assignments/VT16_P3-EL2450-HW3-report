p = dlmread('1.csv', ';', 1, 0);

nz = find(p(:,4));

p = p(nz-1:end,:);

t0 = p(1,1);
p(:,1) = (p(:,1) - t0) * 10^(-6);

plot(p(:, 1), p(:,2) .* cos(p(:,4)*pi/180) + p(:,3) .* sin(p(:,4)*pi/180));
grid;

%axis([0 12 d0 120])