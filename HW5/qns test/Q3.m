original=double(imread('cameraman.tif'));
dftimage=zeros(256,1024);
for i=1:256
    for j=1:256
        dftimage(i,j)=original(i,j);
    end
end