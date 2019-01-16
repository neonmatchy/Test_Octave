pkg load image;    #おまじない()

lena = imread('Lena.tiff'); #画像の読み込み
figure;                     #描画ウィンドウ生成

subplot(2,2,1);    #描画位置決定 2x2区切ったうちの1番目
imshow(lena);      #元の画像を描画
title("Lena:RGB"); #タイトル設定

subplot(2,2,2);    #描画位置決定 2x2区切ったうちの2番目
imshow(cat(3,lena(:,:,1),zeros(512,512),zeros(512,512)));
#赤のみの画像を描画 lena(:,:,1)で赤成分を取得、青と緑成分にはゼロの配列を設定してcatで3次元でくっつける
title("Lena:R");   #タイトル設定

subplot(2,2,3);
imshow(cat(3,zeros(512,512),lena(:,:,2),zeros(512,512)));
title("Lena:G");

subplot(2,2,4);
imshow(cat(3,zeros(512,512),zeros(512,512),lena(:,:,3)));
title("Lena:B");