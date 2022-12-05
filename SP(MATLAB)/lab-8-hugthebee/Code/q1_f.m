n=0:50;

multiply = 1./(pi*(25-n));
% hn is just the fist 51 samples of hd because the window will be of
% length 51
hn = multiply.*(sin(pi/6*(25 - n)));
hn(26) = 0;
h1 = (-1.^n).*hn;

figure();
subplot(2,2,1);
stem(n,h1,'red');
grid on;
title("The signal h[n]");
ylabel("h[n]");
xlabel("n");

y = fft(h1,1001);
y = fftshift(y);
subplot(2,2,2);
plot(1:1001,abs(y),'magenta');
title("Magnitude plot of H(\omega)");
grid on;
ylabel("|H(\omega)|");
xlabel("\omega");

subplot(2,2,3);
plot(1:1001,angle(y),'magenta');
title("Phase plot of H(\omega)");
grid on;
ylabel("<H(\omega)");
xlabel("\omega");

y1 = 20*log10(abs(y/max(y)));
subplot(2,2,4);
plot(1:length(y1),y1,'red');
title("Magnitude plot of H(\omega) (in dB)");
grid on;
ylabel("|H(\omega)|");
xlabel("dB");
