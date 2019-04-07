function bgd=median_bgd(frame_index,bgdnum)

tempimg=import_img(frame_index-bgdnum/2);

for i=floor(frame_index-bgdnum/2)+1:floor(frame_index+bgdnum/2)
    tempimg(:,:,i-floor(frame_index-bgdnum/2)+1)=import_img(i);
end

bgd=median(tempimg,3);


end