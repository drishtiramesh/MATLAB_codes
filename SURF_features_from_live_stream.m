
vid = videoinput('winvideo',1, 'YUY2_320x240');
set(vid, 'FramesPerTrigger', Inf);
set(vid, 'ReturnedColorspace', 'rgb');
%vid.FrameRate =30;
vid.FrameGrabInterval = 1;  % distance between captured frames 
start(vid)
path='file.avi';
vidWriter = VideoWriter(path);
open(vidWriter);

for iFrame = 1:10                    %no of frames to be captured
  % ...
  % You would capture a single image I from your webcam here
  % ...
  img=getsnapshot(vid);
  ref_gray=rgb2gray(img);
  ref_pts=detectSURFFeatures(ref_gray);
  [ref_features,ref_validPts]=extractFeatures(ref_gray,ref_pts);
  figure;
  imshow(img);
  hold on;
  plot(ref_pts.selectStrongest(50));
 
 writeVideo(vidWriter, img);  
end
close(vidWriter);        
stop(vid);

