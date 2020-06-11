clear all;
close all;
x=[-10:0.1:10];
L=1;
% continuous Binary Activation
y1 = 1./(1+exp(-L*x));
y2=(2./(1+exp(-L*2*x))) -1;
% Hard limit Binary Activation Function
for i=1:length(x)
 if( x(i) >= 0)
 y3(i) =1;

 else
 y3(i) =0;
 end
end
 subplot(131);
 % All three in one plot
 plot(x,y1,'r',x,y2,'--b',x,y3,'k');
 hold on;
 subplot(132);
 %Tanh Function
 plot(x,y2,'--b');
 subplot(133);
 %Binary Step Function
 plot(x,y3,'k');
 hold off;