b0 = 0.9;

b = [b0 -1*b0*(1.414) b0];
a = [1 -(1.414)*0.9 0.9*0.9];

[y,w] = freqz(b,a,2001);
figure();
plot(w/pi,20*log10(abs(y)));
title("Frequency response of the given filter");
xlabel("Frequency");
ylabel("Magnitude in dB");

figure();
zplane(y);