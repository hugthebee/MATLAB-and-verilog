f0 = 11;
fs = 64;
ts = 1/fs;
L = 16;
m = [1,2,4,8];
N = m*L;
n = 0:30;

% defining signals
p = cos(2*pi*f0*n*ts);
w = [ones(1,L), zeros(1, length(p) - L)];
x = p.*w;

figure();
% fft plots
for k = 1:length(N) - 2
xfft = fft(x,N(k));
subplot(2,2,k);
stem(1:length(xfft),abs(xfft),'red');
grid on;
title(['FFT plot with m = ', num2str(m(k))]);
xlabel('k');
ylabel('X[k]');
end

for k = 3:length(N)
xfft = fft(x,N(k));
subplot(2,2,k);
plot(1:length(xfft),abs(xfft),'red');
grid on;
title(['FFT plot with m = ', num2str(m(k))]);
xlabel('k');
ylabel('X[k]');
end