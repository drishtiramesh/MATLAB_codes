ref =imread('veg.tiff');
ref_gray=rgb2gray(ref);
ref_pts=detectSURFFeatures(ref_gray);
[ref_features,ref_validPts]=extractFeatures(ref_gray,ref_pts);
figure;imshow(ref);
hold on;
plot(ref_pts.selectStrongest(50));
