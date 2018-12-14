function [pl, ql, pr, qr] = bcfun(xl, ul, xr, ur, t)

% Fixed temperature at left border
pl = 0;
ql = 1;

% Oscillating temperature at right border
pr = ur;
qr = 0;

end

