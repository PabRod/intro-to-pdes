%% Clean environment
close all;
clear;
clc;

%% Problem posing
x = linspace(0,1,100);
t = linspace(0,2*pi,200);

m = 0;
sol = pdepe(m, @pdefun, @icfun, @bcfun, x, t);

u = sol;

surf(x,t,u)
title('Numerical solution')
xlabel('Distance x')
ylabel('Time t')

%% Animate
figure;
for frame_id = 1:numel(t)
    plot(x, u(frame_id, :), 'Color', 'r');
    xlim([min(x), max(x)]);
    ylim([min(u(:)), max(u(:))]);
    xlabel('x');
    ylabel('Temperature');
    % Debug point here
end