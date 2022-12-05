[y,Fs] = audioread("song.wav");

y0 = fft(y);
y0 = fftshift(y0);
figure();
plot(1:length(y0),abs(y0));

ans = abs(y0) > 2000; % deep voice
y0 = ans.*y0;
v = ifft(y0);
audiowrite("deepvoice.wav",abs(v),Fs);

y0 = fft(y);
y0 = fftshift(y0);

ans = abs(y0) < 2000; % deep voice
y0 = ans.*y0;
v = ifft(y0);
audiowrite("violinvoice.wav",abs(v),Fs);

% ans = abs(y0) < 100; % deep voice
% y0 = y0.*ans;
% y1 = ifft(y0);
% audiowrite("deepvoice.wav",abs(y1),Fs);
% 
% y0 = fft(y);
% y0 = fftshift(y0);
% figure();
% plot(1:length(y0),abs(y0));
% 
% ans = abs(y0) > 100; % deep voice
% y = y.*ans;
% y = ifft(y);
% audiowrite("violinvoice.wav",abs(y),Fs);
% 
