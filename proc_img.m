function processed_img=proc_img(img,se)

area_thres=1000;
processed_img=double(bwareaopen(imbinarize(imdilate(img,se)),area_thres));

end