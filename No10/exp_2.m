pkg load image;    #おまじない()

lena = imread('Lena.tiff'); #画像の読み込み
figure;                     #描画ウィンドウ生成

for i=0:10:100,                                             #0から100まで10飛ばしで繰り返す
  subplot(3, 4, 1+(i/10));                                  #描画位置の決定 3x4にくぎって最初の場所から順番に
  imwrite(lena,['lena' , num2str(i) , '.jpg'],'Quality',i); #品質を設定して書き出し 品質はi
  templena = imread(['lena' , num2str(i) , '.jpg']);        #書き出した画像を読み込む
  disp(['----lena' , num2str(i) , ".jpg's status----"]);
  disp(['size : ' , num2str(stat(['lena' , int2str(i) , '.jpg'])(1,:).size)]); #ファイルサイズをコンソールに出力
  disp(['psnr : ' , num2str(psnr(lena,templena))]);         #PSNRをコンソールに出力
  imshow(templena);                                         #書き出した画像を描画
  title(['lena' , num2str(i) , '.jpg']);                    #タイトルを設定
end;

subplot(3,4,12);    #描画位置の決定 3x4にくぎって12番目
imshow(lena);       #最初の画像を表示
title("Lena.tiff"); #タイトル設定