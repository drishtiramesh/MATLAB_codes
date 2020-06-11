vid = videoinput('winvideo',1, 'YUY2_320x240');
set(vid, 'FramesPerTrigger', Inf);
set(vid, 'ReturnedColorspace', 'rgb');
%vid.FrameRate =30;
vid.FrameGrabInterval = 1;  % distance between captured frames 
start(vid)
path='file.avi';
vidWriter = VideoWriter(path);
open(vidWriter);

for iFrame = 1:100                    % Capture 100 frames
  % ...
  % You would capture a single image I from your webcam here
  % ...
  img=getsnapshot(vid);
 %imshow(I);
 % Write frame to video
 writeVideo(vidWriter, img);  
end
close(vidWriter);        % Close the AVI file
stop(vid);