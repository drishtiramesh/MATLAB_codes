f=imread('veg.tiff');
g=imread('cameraman.tiff');

[r c b]=size(f);
%Resizing image 1 according to dimension of image 2
g=imresize(g,[r c]);
%Adding 2 images
ff=imadd(f,g);
%Inverse of image
f1=255-f;
th=127;
%Thresholding for an image
for k=1:r
    for l=1:c
        if(g(k,l)<127)
            j(k,l)=0;
        else
            j(k,l)=255;
        end
    end
end

f3=f(end:-1:1,:);
subplot(2,2,1)
imshow(ff);
subplot(2,2,2)
imshow(g);
subplot(2,2,3)
imshow(uint8(j));
subplot(2,2,4)
imshow(f3);

