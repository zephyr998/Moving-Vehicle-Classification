framesPath = cd;
videoName = 'blackwhite.mp4';
fps = 20; 
startFrame = 1; 
endFrame = frame_num; 

aviobj=VideoWriter(videoName);  
aviobj.FrameRate=fps;

open(aviobj);
for i=startFrame:endFrame
    frames=imglis{i};
    writeVideo(aviobj,frames);
end
close(aviobj);