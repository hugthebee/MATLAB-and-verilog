[x1,Fs1] = audioread("stumpMic/1n.mp4");
[x2,Fs2] = audioread("stumpMic/2n.mp4");

mea = MeA_filter(x1,300);
ma = MA_filter(x1,300);

x1 = fft(x1);
mea = fft(mea);
ma = fft(ma);
x1 = fftshift(x1);
mea = fftshift(mea);
ma = fftshift(ma);

ans1 = ma(abs(ma) > 90);
ans2 = ma(abs(ma) > 250);
if(length(ans2) >= 1)
    disp("This is a bat!");
else
    disp("This is a pad!");
end

figure;
subplot(1,3,1);
plot(1:length(x1), abs(x1),'red');
grid on;
title("Input signal FFT");
xlabel('f');
ylabel('X(k)');

subplot(1,3,2);
plot(1:length(mea), abs(mea),'red');
grid on;
title("Median Average Filtered Signal FFT");
xlabel('f');
ylabel('X(k)');

subplot(1,3,3);
plot(1:length(ma), abs(ma),'red');
grid on;
title("Moving Average Filtered Signal");
xlabel('f');
ylabel('X(k)');

mea = MeA_filter(x2,300);
ma = MA_filter(x2,300);

x2 = fft(x2);
mea = fft(mea);
ma = fft(ma);
x2 = fftshift(x2);
mea = fftshift(mea);
ma = fftshift(ma);

figure;
subplot(1,3,1);
plot(1:length(x2), abs(x2),'red');
grid on;
title("Original Input Signal FFT");
xlabel('f');
ylabel('X(k)');

subplot(1,3,2);
plot(1:length(mea), abs(mea),'red');
grid on;
title("Median Average Filtered Signal FFT");
xlabel('f');
ylabel('X(k)');

subplot(1,3,3);
plot(1:length(ma), abs(ma),'red');
grid on;
title("Moving Average Filtered Signal FFT");
xlabel('f');
ylabel('X(k)');

ans1 = ma(abs(ma) > 90);
ans2 = ma(abs(ma) > 250);
if(length(ans2) >= 1)
    disp("This is a bat!");
else
    disp("This is a pad!");
end