syms t;
w0 = 1;
T=2*pi;
t1 = -2*T:0.01:2*T;
xt = cos(t);

A = fourierCoeff(t,xt,T,-pi,pi,3);
wc = 2;
B = myLPF(A,w0,wc);

a = partialfouriersum(A,T,t1);
figure();
plot(t1,a);
grid on;
title('Signals reconstructed from fourier coefficients with wc=2');
xlabel('t');
ylabel('y(t)');
hold on;
b = partialfouriersum(B,T,t1);
plot(t1,b);
hold off;

wc = 0.5;
B = myLPF(A,w0,wc);

a = partialfouriersum(A,T,t1);
figure();
plot(t1,a);
grid on;
title('Signals reconstructed from fourier coefficients with wc=0.5');
xlabel('t');
ylabel('y(t)');
hold on;
b = partialfouriersum(B,T,t1);
plot(t1,b);
hold off;
