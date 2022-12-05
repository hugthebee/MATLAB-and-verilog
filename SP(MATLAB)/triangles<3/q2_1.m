[x1,Fs1] = audioread("stumpMic/1n.mp4");
n = length(x1);

mea = MeA_filter(x1,300);
ma = MA_filter(x1,300);

figure;
subplot(1,3,1);
plot(1:length(x1), x1,'red');
grid on;
title("Original Input Signal");
xlabel('n');
ylabel('x[n]');
subplot(1,3,2);
plot(1:length(mea), mea,'red');
grid on;
title("Median Average Filtered Signal");
xlabel('n');
ylabel('x[n]');
subplot(1,3,3);
plot(1:length(ma), ma,'red');
grid on;
title("Moving Average Filtered Signal");
xlabel('n');
ylabel('x[n]');