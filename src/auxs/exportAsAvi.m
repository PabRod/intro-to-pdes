function exportAsAvi(M, filename)

    % Prepare the new file.
    vidObj = VideoWriter(filename);
    open(vidObj);
 
    for i = 1:numel(M)
       currFrame = frame2im(M(i));
       writeVideo(vidObj, currFrame);
    end
  
    % Close the file.
    close(vidObj);

end