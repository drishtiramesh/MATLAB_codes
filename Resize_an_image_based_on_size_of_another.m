f=imread('veg.tiff');
g=imread('cameraman.tiff');
[r c b]=size(f);
g=imresize(g,[r c]);

imwrite(g,'resize.jpg');
