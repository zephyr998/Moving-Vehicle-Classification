function shaped_img=insert_img(bgdimg,targimg)

[l,~] = bwlabel(bgdimg);
status=regionprops(l,'BoundingBox');
% centroid = regionprops(l,'Centroid');
shaped_img=insertShape(targimg,'Rectangle',cat(1,status.BoundingBox),'Color','green');
%   shaped_img=insertText(shaped_img,centroid(i,1).Centroid,num2str(i),'TextColor','red','BoxColor','white','');

end