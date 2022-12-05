[y,Fs] = audioread("deep.wav");
[x,Fs0] = audioread("violin.wav");
y = [y; zeros(15000, 2)];
ly = length(y);
lx = length(x);


if ly>lx
no = ly - lx;
x = [x; zeros(no,2)];
else
no = lx - ly;
y = [y; zeros(no,2)];
end

sum = y + x;

sum = sum(1:ly+100000);
audiowrite("song.wav",sum,Fs);
%{
% x1 = fft(x);
% x1 = fftshift(x1);
% y1 = fft(y);
% y1 = fftshift(y1);



y1 = ifft(y1);
x1 = ifft(x1);
sum = x1 + y1;
figure();
plot(1:length(sum),sum);
%}
% disp(length(x));
% disp(length(y));
% s = x + y;
% 
% s = s(1:(l+150000));
% n = rand(1,length(s));
% n = n/4;
% s = s+n;
% 
% s = MA_filter(s,30);
% 
% s0 = fft(s);
% s0 = fftshift(s0);
% plot(1:length(s0),abs(s0));
% 
% audiowrite("song.wav",s,Fs0);