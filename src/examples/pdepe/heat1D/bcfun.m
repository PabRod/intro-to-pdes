function [pl, ql, pr, qr] = bcfun(xl, ul, xr, ur, t)

% Fixed temperature at left border
pl = ul;
ql = 0;

% Oscillating temperature at right border
pr = ur - sin(t);
qr = 0;

end

