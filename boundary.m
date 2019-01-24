
% To perform boundary extraction %

clc;
a=imread('eight.tif');
subplot(2,2,1);
imshow(a);
title('Original Image');

se = strel('line',5,5);
ero = imerode(a,se);
int=imsubtract(a,ero);
subplot(2,2,3);
imshow(int);
title('Internal Boundary');

dil = imdilate(a,se);
ext=imsubtract(dil,a);
subplot(2,2,4);
imshow(ext);
title('External Boundary');