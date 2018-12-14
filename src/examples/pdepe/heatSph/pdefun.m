function [c, f, s] = pdefun(x, t, u, DuDx)

K = 0.05;

c = 1/K;
f = DuDx;
s = 2./x.*DuDx;

end

