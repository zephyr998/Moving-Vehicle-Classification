function img=import_img(img_index)

img=imread(num2str(floor(img_index))+".jpg");
img=double(imgaussfilt(rgb2gray(img(94:464,:,:)),2))/255.0;

end