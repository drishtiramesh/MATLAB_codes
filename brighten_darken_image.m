f=imread('veg.tiff');
f1=imadd(f,20);
f2=imadd(f,100);
f3=imsubtract(f,60);
f4=imsubtract(f,30);
subplot(2,2,1);
imshow(f1);
title('Brighten by 20');
subplot(2,2,2);
imshow(f2);
title('Brighten by 100');
subplot(2,2,3);
imshow(f3);
title('Darken by 60');
subplot(2,2,4);
imshow(f1);
title('Darken by 30');
%Save those images
%{
imwrite(f1,'db1.jpg');
imwrite(f2,'db2.jpg');
imwrite(f3,'db3.jpg');
imwrite(f4,'db4.jpg');
%}
