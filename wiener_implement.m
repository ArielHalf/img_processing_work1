%image restoration by using wiener filter 

clearvars

img1=imread("parrots.png");

len1=20;
len2=40;
theta=30;

h1 = fspecial('motion',len1,theta);
h2 = fspecial('motion',len2,theta);

MotionBlur1 = imfilter(im2double(img1),h1,'conv','circular');
MotionBlur2 = imfilter(im2double(img1),h2,'conv','circular');

fix_img=deconvwnr(MotionBlur1,h1);
figure;
imshow(fix_img)

figure;

subplot(1,3,1), imshow(img1)
title('original parrot')

subplot(1,3,2), imshow(MotionBlur1)
title('motion blur parrot len=20')

subplot(1,3,3), imshow(fix_img)
title('image restoration by using wiener filter')
