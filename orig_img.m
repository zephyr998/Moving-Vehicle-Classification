function img=orig_img(img_index)

img=imread(num2str(floor(img_index))+".jpg");
img=double(img(94:464,:,:))/255.0;

end