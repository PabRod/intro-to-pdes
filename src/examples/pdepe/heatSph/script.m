%% Clean environment
close all;
clear;
clc;

%% Problem posing
x = linspace(0,2,200);
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
loops = round(numel(t)/2);
F(loops) = struct('cdata',[],'colormap',[]);
for frame_id = 1:loops
    plot(x, u(frame_id, :), 'Color', 'r');
    xlim([min(x), max(x)]);
    ylim([min(u(:)), max(u(:))]);
    xlabel('r');
    ylabel('Concentration');
    F(frame_id) = getframe(gcf);
end

%% Export as gif
filename = 'animation.gif';
for n = 1:loops
   im = frame2im(F(n)); 
      [imind,cm] = rgb2ind(im,256); 
      % Write to the GIF File 
      if n == 1 
          imwrite(imind,cm,filename,'gif', 'Loopcount',inf); 
      else 
          imwrite(imind,cm,filename,'gif','WriteMode','append'); 
      end  
end