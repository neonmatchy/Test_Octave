pkg load image

lena  = imread('Lena.tiff');

i = 100;
for i = 100:10:0,
    imwrite(lena,['Lena', int2str(i),'.jpg'],'Quality',i);
end;