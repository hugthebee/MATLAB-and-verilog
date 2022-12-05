% -- verifying the fft function -- %
Fs = 8;
t = 0:1/Fs:1-1/Fs;
x = cos(2*pi*15*t - pi/4) + cos(2*pi*40*t + pi/2);

y1 = fft(x);
y2 = radix2fft(x);

figure();
stem(1:length(y1),abs(y1),'red');
grid on;
title('FFT plot using inbuilt fft function');
xlabel('k');
ylabel('X[k]');
figure();
stem(1:length(y2),abs(y2));
grid on;
title('FFT plot using radix2fft function');
xlabel('k');
ylabel('X[k]');
