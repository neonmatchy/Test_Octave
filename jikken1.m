pkg load image

lena = imread('Lena.tiff');
imwrite(lena,'Lena1.bmp');

temp1 = lena;
temp1(:,:,2) = 0;
temp1(:,:,3) = 0;

temp2 = lena;
temp2(:,:,1) = 0;
temp2(:,:,3) = 0;

temp3 = lena;
temp3(:,:,1) = 0;
temp3(:,:,2) = 0;

figure
subplot(2,2,1), imshow(lena), title('Lena:RGB')
subplot(2,2,2), imshow(temp1), title('Lena:R')
subplot(2,2,3), imshow(temp2), title('Lena:G')
subplot(2,2,4), imshow(temp3), title('Lena:B')