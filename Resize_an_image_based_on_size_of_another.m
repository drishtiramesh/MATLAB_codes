f=imread('C:\Users\Drishti\Desktop\matlabpics\veg.tiff');
g=imread('C:\Users\Drishti\Desktop\matlabpics\cameraman.tiff');
[r c b]=size(f);
g=imresize(g,[r c]);

imwrite(g,'C:\Users\Drishti\Desktop\matlabpics\resize.jpg');
