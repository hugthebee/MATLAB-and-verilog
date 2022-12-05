% -- a -- %
L = 4;
N = 4;

x = [ones(L,1);zeros(N-L,1)];
xt = fft(x);

figure();
subplot(3,1,1);
plot(1:length(x),x,'red');
title('Original sequence x[n] when N=4');
xlabel('n');
ylabel('x[n]');
subplot(3,1,2);
plot(1:length(xt),abs(xt),'red');
title('Magnitude plot of FFT');
xlabel('k');
ylabel('|X(k)|');
subplot(3,1,3);
plot(1:length(xt),angle(xt),'red');
title('Phase plot of FFT');
xlabel('k');
ylabel('<X(k)');


N = 16;

x = [ones(L,1);zeros(N-L,1)];
xt = fft(x);

figure();
subplot(3,1,1);
plot(1:length(x),x,'red');
title('Original sequence x[n] when N=16');
xlabel('n');
ylabel('x[n]');
subplot(3,1,2);
plot(1:length(xt),abs(xt),'red');
title('Magnitude plot of FFT');
xlabel('k');
ylabel('|X(k)|');
subplot(3,1,3);
plot(1:length(xt),angle(xt),'red');
title('Phase plot of FFT');
xlabel('k');
ylabel('<X(k)');

N = 64;

x = [ones(L,1);zeros(N-L,1)];
xt = fft(x);

figure();
subplot(3,1,1);
plot(1:length(x),x,'red');
title('Original sequence x[n] when N=64');
xlabel('n');
ylabel('x[n]');
subplot(3,1,2);
plot(1:length(xt),abs(xt),'red');
title('Magnitude plot of FFT');
xlabel('k');
ylabel('|X(k)|');
subplot(3,1,3);
plot(1:length(xt),angle(xt),'red');
title('Phase plot of FFT');
xlabel('k');
ylabel('<X(k)');
