f0 = 12;
fs = 64;
ts = 1/fs;
L = 16;
n = 0:30;

% defining signals
p = cos(2*pi*f0*n*ts);
w = hann(L);
x = p.*w;

xfft = fft(x,L);
figure();
plot(1:length(xfft),abs(xfft));
grid on;
title('FFT plot with hanning window');
xlabel('k');
ylabel('X[k]');
