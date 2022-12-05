syms w;
wc = pi/8;
n = -100:100;

X = piecewise(abs(w) <= wc, 1 , wc < abs(w) < pi, 0);
x = Inverse_DTFT(X,w,n,-1*pi,pi);

figure;
subplot(2,2,1);
stem(n,abs(x),'red');
title('Inverse DTFT magnitude plot with wc=pi/8');
ylabel('|x[n]|');
xlabel('n');

subplot(2,2,2);
stem(n,angle(x),'blue');
title('Inverse DTFT phase plot with wc=pi/8');
ylabel('<x[n]');
xlabel('n');

subplot(2,2,3);
stem(n,real(x),'green');
title('Inverse DTFT real plot with wc=pi/8');
ylabel('R(x[n])');
xlabel('n');

subplot(2,2,4);
stem(n,imag(x),'magenta');
title('Inverse DTFT imaginary plot with wc=pi/8');
ylabel('I(x[n])');
xlabel('n');

wc = pi/4;
X = piecewise(abs(w) <= wc, 1 , wc < abs(w) < pi, 0);
x = Inverse_DTFT(X,w,n,-1*pi,pi);

figure;
subplot(2,2,1);
stem(n,abs(x),'red');
title('Inverse DTFT magnitude plot with wc=pi/4');
ylabel('|x[n]|');
xlabel('n');

subplot(2,2,2);
stem(n,angle(x),'blue');
title('Inverse DTFT phase plot with wc=pi/4');
ylabel('<x[n]');
xlabel('n');

subplot(2,2,3);
stem(n,real(x),'green');
title('Inverse DTFT real plot with wc=pi/4');
ylabel('R(x[n])');
xlabel('n');

subplot(2,2,4);
stem(n,imag(x),'magenta');
title('Inverse DTFT imaginary plot with wc=pi/4');
ylabel('I(x[n])');
xlabel('n');

wc = pi/2;
X = piecewise(abs(w) <= wc, 1 , wc < abs(w) < pi, 0);
x = Inverse_DTFT(X,w,n,-1*pi,pi);

figure;
subplot(2,2,1);
stem(n,abs(x),'red');
title('Inverse DTFT magnitude plot with wc=pi/2');
ylabel('|x[n]|');
xlabel('n');

subplot(2,2,2);
stem(n,angle(x),'blue');
title('Inverse DTFT phase plot with wc=pi/2');
ylabel('<x[n]');
xlabel('n');

subplot(2,2,3);
stem(n,real(x),'green');
title('Inverse DTFT real plot with wc=pi/2');
ylabel('R(x[n])');
xlabel('n');

subplot(2,2,4);
stem(n,imag(x),'magenta');
title('Inverse DTFT imaginary plot with wc=pi/2');
ylabel('I(x[n])');
xlabel('n');