bgdnum=10;
k=0.037;
se= strel('disk', 1);
fps = 20; 
startFrame = 50; 
endFrame = 450; 

% v_name='bgd subtraction v2_2.avi';
% write_nobgd(v_name,fps,startFrame,endFrame,bgdnum,k,se);

v_name='car_label_4.avi';
write_video(v_name,fps,50,1800,bgdnum,k,se);















