function exportAsGif(M, filename)

for i = 1:numel(M)
    
    im = frame2im(M(i));
    [imind, cm] = rgb2ind(im,256);
    
    % Write to the GIF File
    if i == 1
        imwrite(imind,cm,filename,'gif', 'Loopcount',inf, 'DelayTime', 0.25);
    else
        imwrite(imind,cm,filename,'gif','WriteMode','append', 'DelayTime', 0.25);
    end
end

end