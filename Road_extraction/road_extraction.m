clc
clear all;
close all;
I=imread('C:\Users\DELL\Desktop\start.jpg');
figure;
imshow(I);
title('Original image');
 
J=rgb2gray(I);
%whos
figure,imshow(J);
title('grayscale image');
%[a,b]=size(J);
%K = zeros(a,b);
K=imadjust(J,[0.5 0.9],[]); 
%P=find(J >= 127.5);
%S=find(J <= 229.5);
%M=intersect(P,S);
%K(M)= J(M);
figure;
imshow(K);

level = graythresh(K);  
I=im2bw(K,level);     
I=imread('C:\Users\DELL\Desktop\my1.jpg');
I = im2bw(I, 0.65);
figure;
imshow(I);
title('Binary image after thresholding');


B = medfilt2(I);
figure,imshow(B);
title('median filtered image');

im = bwareaopen(B,10000);
%Binary = imfill(im,'holes');
figure,imshow(im);
title('removing connected components(pixel <6)');

BW = bwmorph(im,'remove');
figure,imshow(BW);
title('morphological filtering');

BW1 = edge(BW,'sobel');
figure,imshow(BW1);
title('edge detection(sobel)');

H = vision.AlphaBlender;
J = im2single(J);
BW1 = im2single(BW1);
Y = step(H,J,BW1);
figure,imshow(Y)
title('overlay on grayscale image');
%whos

