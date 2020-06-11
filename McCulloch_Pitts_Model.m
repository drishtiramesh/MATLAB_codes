clear all;
close all;
clc;
x1 =[ 0 0 1 1];
x2= [0 1 0 1];
z= [0 1 1 1]; % Target Vector
%w1 = 1;
w1 = input('enter w1 \n');
%w2 = 1;
w2 = input('enter w2 \n');
b =1; % bias
theta =1.5;
zin = b+x1*w1+x2*w2;
con =1;
while con
for i=1:4
 if( zin(i) >= theta)
     y(i) =1;

 else
 y(i) =0;
 end
end
fprintf('Our output');
disp(y);
if (y ==z)
 con=0;
else
 disp('enter the another set of weight');
end
end
fprintf('target output');
disp(z);
fprintf('designed McCulloch Pitts Model \n');