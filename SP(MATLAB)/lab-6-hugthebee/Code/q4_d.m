syms t;
w0 = 1;
T=2*pi;
G = 1;
a = 1;
t1 = -2*T:0.01:2*T;
xt = cos(t);

A = fourierCoeff(t,xt,T,-pi,pi,3);
B = NonIdeal(A,w0,G,a);

a = partialfouriersum(A,T,t1);
figure();
plot(t1,a);
grid on;
title('Signals reconstructed from fourier coefficients');
xlabel('t');
ylabel('y(t)');
hold on;
b = partialfouriersum(B,T,t1);
plot(t1,b);
hold off;
