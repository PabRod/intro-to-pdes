function [pl, ql, pr, qr] = bcfun(xl, ul, xr, ur, t)

%% Oscillating temperature and open border
pl = 0;
ql = 1;

pr = ur - 0.1.*sin(t);
qr = 0;

%% Fixed temperature at borders
% pl = ur;
% ql = 0;
% 
% pr = ur;
% qr = 0;


end

