n=0:50;

multiply = 1./(pi*(25-n));
hd = multiply.*(sin(pi/6*(25 - n)));
hd(26) = 0;

% -- making the blackmann window -- %
wn = blackman(51);
wn = transpose(wn);
hn = hd.*wn;

figure();
subplot(2,2,1);
stem(n,hn,'red');
grid on;
title("The signal h[n] (with blackmann window)");
ylabel("h[n]");
xlabel("n");

% -- finding dft of hn -- %
y = fft(hn,1001);
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
ylim([-100,10]);