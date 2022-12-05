N = 20;
w0 = 3*pi/10;
n = 0:N-1;

x = cos(w0*n);
xt = fft(x);

figure();
subplot(3,1,1);
stem(1:length(x),x,'red');
title('Original sequence x[n] when N=4');
xlabel('n');
ylabel('x[n]');
subplot(3,1,2);
stem(1:length(xt),abs(xt),'red');
title('Magnitude plot of FFT');
xlabel('k');
ylabel('|X(k)|');
subplot(3,1,3);
stem(1:length(xt),angle(xt),'red');
title('Phase plot of FFT');
xlabel('k');
ylabel('<X(k)');