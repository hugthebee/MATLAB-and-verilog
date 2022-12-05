% impulse response
n = 0:999;
h = zeros(1,1000);
h(1) =1;
h(2) = -1;

w0 = pi/200;
s = 5*sin(w0*n);
v = randn(1,1000); % random variable
x = s+v;

figure;
subplot(2,1,1);
plot(1:length(s),s,'red');
grid on;
title('Plots of s[n] and x[n]');
xlabel('n');
ylabel('s[n] / x[n]');
hold on;
plot(1:length(x),x,'blue');
hold off;

y = conv(h,x,"full");
subplot(2,1,2);
plot(1:length(y),y,'blue');
grid on;
title('Plot of y[n] and s[n]');
xlabel('n');
ylabel('s[n] / y[n]');
hold on;
plot(1:length(s),s,'red');
hold off;

xd = DT_Fourier(x,1,w);
yd = DT_Fourier(y,1,w);

figure;
subplot(2,1,1);
plot(1:length(xd),abs(xd),'magenta');
grid on;
title('DTFT plot of x[n]');
xlabel('w');
ylabel('X(e^j^w)');

subplot(2,1,2);
plot(1:length(yd),abs(yd),'green');
grid on;
title('DTFT plots of y[n]');
xlabel('w');
ylabel('Y(e^j^w)');
