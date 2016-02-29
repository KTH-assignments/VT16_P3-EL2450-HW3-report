function [dist p] = distance(p)

nz = find(p(:,2));
p = p(nz-1:end,:);
t = p(1,1);
p(:,1) = (p(:,1) - t) * 10^(-6);

dist = p(:,2).*cos(p(:,4) * pi / 180) + p(:,3).*sin(p(:,4) * pi / 180);