function p = angle(p)

nz = find(p(:,4));
%p = p(nz-1:end,:);
t = p(1,1);
p(:,1) = (p(:,1) - t) * 10^(-6);
