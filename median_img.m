function med_bgd=median_img(frame_index,bgdnum,k)

tempimg=import_img(frame_index-bgdnum/2);

for i=floor(frame_index-bgdnum/2)+1:floor(frame_index+bgdnum/2)
    tempimg(:,:,i-floor(frame_index-bgdnum/2)+1)=import_img(i);
end

med_bgd=abs(import_img(frame_index)-median(tempimg,3));

thres=k*max(max(med_bgd));

med_bgd(med_bgd>=thres)=1;
med_bgd(med_bgd<thres)=0;

end