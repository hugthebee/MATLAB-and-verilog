fs = 64;
ts = 1/fs;
L = [16,32,64,128];
N = 8*L;
n = 0:150;

% defining signals
p = cos(2*pi*f0*n*ts);

figure();
% fft plots
for k = 1:length(N)
w = [ones(1,L(k)), zeros(1, length(p) - L(k))];
x = p.*w;
xfft = fft(x,N(k));
subplot(2,2,k);
plot(1:length(xfft),abs(xfft),'magenta');
grid on;
title(['FFT plot with L = ', num2str(L(k))]);
xlabel('k');
ylabel('X[k]');
end
