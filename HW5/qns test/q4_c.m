original=double(imread('cameraman.tif'));
dctimg=dct2(original);
imagesc(original);
dctimgnew=dctimg;
%imagesc(dctimgnew);
sorted=sort(dctimg);
reshaped=reshape(sorted,[1,256*256]);
percent_new=prctile(reshaped,90)
for i=1:256
 for j=1:256
  if(dctimg(i,j)<=percent_new)
   dctimgnew(i,j)=0;
    end
 end
end
alteredimage=idct(dctimgnew);
imagesc(alteredimage);