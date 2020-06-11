x=input('Type in the reference (Array of vector)=');
n=(length(x)-1);
%%Autocorrelation ( With Itself)
auto=conv(x,fliplr(x));
fprintf("Auto Correlation");
disp(auto);

%%OR Method 2 (Autocorrelation with itself)
[r, lag]=xcorr(x,x);
fprintf("Auto Correlation is=");
disp(r);
%%Plot
stem(lag,r);

