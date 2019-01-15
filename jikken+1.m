pkg load image;

I = imread('Lena.tiff');
[m,n,k] = size(I);

logo = imread('logo.bmp');
logom = m/4;
logon = n/4;

logo_new = imresize(logo,[logom,logon]);

logo_bi = im2bw(logo_new);

watermark = [
    logo_bi logo_bi logo_bi logo_bi;
    logo_bi logo_bi logo_bi logo_bi;
    logo_bi logo_bi logo_bi logo_bi;
    logo_bi logo_bi logo_bi logo_bi
];

figure;imshow(watermark);

B = I(:,:,3);
for i = 1:8,
    B_bi_l = bitget(B, i);
    figure;imshow(B_bi_l, []);
end

B_wa = bitset(B, 1, watermark);

newI = I;
newI(:,:,3) = B_wa;
psnr_val = psnr(I, newI);

imwrite(newI, 'Lena_b.bmp');

clear
clc

J = imread('Lena_bb.bmp');
B = J(:,:,3);
B_ex = bitget(B, 1);
figure;imshow(B_ex,[])
corr2(B_ex, watermark);