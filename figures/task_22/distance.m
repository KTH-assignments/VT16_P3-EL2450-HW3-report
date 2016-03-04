function [dist p] = distance(p, target_x, target_y)

t0 = p(1,1);
p(:,1) = (p(:,1) - t0) * 10^(-6);

% dist = p(:,2).*cos(p(:,4) * pi / 180) + p(:,3).*sin(p(:,4) * pi / 180);

dist = sqrt((p(:,2) - target_x).^2 + (p(:,3) - target_y).^2);