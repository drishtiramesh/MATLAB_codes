
cam = webcam;
path='video.avi';
vidWriter = VideoWriter(path);
open(vidWriter);
for index = 1:20
    % Acquire frame for processing
    img = snapshot(cam);

    % Write frame to video
    writeVideo(vidWriter, img);
end
figure;

close(vidWriter);
clear cam;



