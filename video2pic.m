vname='v2.mp4';
total_frame=2000;
mp4tojpg(vname,total_frame);

function []=mp4tojpg(vname,total_frame)

v = vision.VideoFileReader(vname);

for i=1:total_frame
    img_name=[num2str(i),'.jpg'];
    imwrite(step(v),img_name);
end

end