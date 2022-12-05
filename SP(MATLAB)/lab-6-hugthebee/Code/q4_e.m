syms t;
xt = sin(2*t) + cos(3*t);
w0 = 1;
T = 2*pi;
t1 = -2*T:0.01:2*T;

A = fourierCoeff(t,xt,T,-pi,pi,3);
wc = 2.5;

B = myLPF(A,w0,wc);

a = partialfouriersum(A,T,t1);
figure();
plot(t1,a);
grid on;
title('Signals reconstructed from fourier coefficients (LPF)');
xlabel('t');
ylabel('y(t)');
hold on;
b = partialfouriersum(B,T,t1);
plot(t1,b);
hold off;

B = myHPF(A,w0,wc);

a = partialfouriersum(A,T,t1);
figure();
plot(t1,a);
grid on;
title('Signals reconstructed from fourier coefficients (HPF)');
xlabel('t');
ylabel('y(t)');
hold on;
b = partialfouriersum(B,T,t1);
plot(t1,b);
hold off;

G = 2;
a1 = 2;

B = NonIdeal(A,w0,G,a1);

a = partialfouriersum(A,T,t1);
figure();
plot(t1,a);
grid on;
title('Signals reconstructed from fourier coefficients (Non ideal filter)');
xlabel('t');
ylabel('y(t)');
hold on;
b = partialfouriersum(B,T,t1);
plot(t1,b);
hold off;
