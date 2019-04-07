function []=write_v_nobgd(filename,fps,startframe,endframe,bgd_num,k,se)

mp4obj=VideoWriter(filename);  
mp4obj.FrameRate=fps;

open(mp4obj);

for i=startframe:endframe
    bgd=proc_img(median_img(i,bgd_num,k),se);
    frames=insert_img(bgd,bgd);
    frames=insertText(frames,[0 320],['frame:',num2str(i)],...
           'FontSize',18,'TextColor','red','BoxColor','green','BoxOpacity',1);
    writeVideo(mp4obj,frames);
end

close(mp4obj);

end