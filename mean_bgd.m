function no_bgd_img=mean_bgd(frame_index,bgdnum)

bgd=zeros(371,640);

for i=floor(frame_index-bgdnum/2):floor(frame_index+bgdnum/2)
    tempimg=import_img(frame_index);
    bgd=bgd+tempimg; 
end

bgd=bgd/bgdnum;
no_bgd_img=abs(import_img(frame_index)-bgd);

thres=0.21*max(max(no_bgd_img));

no_bgd_img(no_bgd_img>=thres)=1;
no_bgd_img(no_bgd_img<thres)=0;

end