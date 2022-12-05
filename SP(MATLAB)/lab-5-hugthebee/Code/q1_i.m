[y,Fs] = audioread("7.wav");

L = length(y);

% defining signals
w = hann(L);
x = y.*w;

xfft = fft(x,L);

figure();
plot(1:length(xfft),abs(xfft));
grid on;
title('FFT plot with hanning window');
xlabel('k');
ylabel('X[k]');

[y,Fs] = audioread("bojack-horseman-theme-song.wav");

L = length(y);

% defining signals
w = hann(L);
x = y.*w;

xfft = fft(x,L);

figure();
plot(1:length(xfft),abs(xfft));
grid on;
title('FFT plot with hanning window');
xlabel('k');
ylabel('X[k]');

