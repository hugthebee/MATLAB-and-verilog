w = -10:0.01:10;
n = 0:100;
b = 0.01;
N0 = 1;

a=b;
x1 = a.^(n); % u[n] = 1; for all values of n from 0 to 100
X1 = DT_Fourier(x1,N0,w);

figure;
subplot(2,2,1);
stem(n,x1,'filled');
grid on;
title('x1[n] for a = b = 0.01');
xlabel('n');
ylabel('x1[n]');

subplot(2,2,3);
plot(1:length(w),abs(X1),'magenta');
grid on;
title('DTFT for x1[n]');
xlabel('w');
ylabel('X1(e^j^w)');

a=-b;
x2 = a.^(n);
X2 = DT_Fourier(x2,N0,w);

subplot(2,2,2);
stem(n,x2,'filled');
grid on;
title('x2[n] for a= -b = -0.01');
xlabel('n');
ylabel('x2[n]');

subplot(2,2,4);
plot(1:length(w),abs(X2),'magenta');
grid on;
title('DTFT for x2[n]');
xlabel('w');
ylabel('X2(e^j^w)');

% changing the value of b
b = 0.5;

a=b;
x1 = a.^(n); % u[n] = 1; for all values of n from 0 to 100
X1 = DT_Fourier(x1,N0,w);

figure;
subplot(2,2,1);
stem(n,x1,'filled');
grid on;
title('x1[n] for a = b = 0.5');
xlabel('n');
ylabel('x1[n]');

subplot(2,2,3);
plot(1:length(w),abs(X1),'magenta');
grid on;
title('DTFT for x1[n]');
xlabel('w');
ylabel('X1(e^j^w)');

a=-b;
x2 = a.^(n);
X2 = DT_Fourier(x2,N0,w);

subplot(2,2,2);
stem(n,x2,'filled');
grid on;
title('x2[n] for a= -b = -0.5');
xlabel('n');
ylabel('x2[n]');

subplot(2,2,4);
plot(1:length(w),abs(X2),'magenta');
grid on;
title('DTFT for x2[n]');
xlabel('w');
ylabel('X2(e^j^w)');

% changing the value of b
b = 0.99;

a=b;
x1 = a.^(n); % u[n] = 1; for all values of n from 0 to 100
X1 = DT_Fourier(x1,N0,w);

figure;
subplot(2,2,1);
stem(n,x1,'filled');
grid on;
title('x1[n] for a = b = 0.99');
xlabel('n');
ylabel('x1[n]');

subplot(2,2,3);
plot(1:length(w),abs(X1),'magenta');
grid on;
title('DTFT for x1[n]');
xlabel('w');
ylabel('X1(e^j^w)');

a=-b;
x2 = a.^(n);
X2 = DT_Fourier(x2,N0,w);

subplot(2,2,2);
stem(n,x2,'filled');
grid on;
title('x2[n] for a= -b = -0.99');
xlabel('n');
ylabel('x2[n]');

subplot(2,2,4);
plot(1:length(w),abs(X2),'magenta');
grid on;
title('DTFT for x2[n]');
xlabel('w');
ylabel('X2(e^j^w)');