% input signal x[n]
M = 5;
w = -10:0.01:10;
w0 = pi/200;
n = 0:999;

s = 5*sin(w0*n);
v = randn(1,1000); % random variable

x = s+v;

% the impulse response is found by x[n] = delta[n]
u = ones(1,1000);
ushift = [ zeros(1,M - 1) , ones(1,1000 - M + 1)];

h = u - ushift;
h = 1/M * h;

% implementing the system using convolution
y = conv(h,x,"full");

xd = DT_Fourier(x,1,w);
yd = DT_Fourier(y,1,w);


figure;
subplot(2,2,1);
plot(1:length(x),x,'magenta');
grid on;
title('Plots of x[n] and y[n]');
xlabel('n');
ylabel('x[n] / y[n]');
hold on;
plot(1:length(y),y,'green');
hold off;

subplot(2,2,2);
plot(1:length(xd),abs(xd),'magenta');
grid on;
title('DTFT plots of x[n] and y[n] for M=5');
xlabel('w');
ylabel('X(e^j^w) / Y(e^j^w)');
hold on;
plot(1:length(yd),abs(yd),'green');
hold off;


M = 21;
u = ones(1,1000);
ushift = [ zeros(1,M - 1) , ones(1,1000 - M + 1)];
h = u - ushift;
h = 1/M * h;

y = conv(h,x,"full");

xd = DT_Fourier(x,1,w);
yd = DT_Fourier(y,1,w);
subplot(2,2,3);
plot(1:length(xd),abs(xd),'magenta');
grid on;
title('DTFT plots of x[n] and y[n] for M=21');
xlabel('w');
ylabel('X(e^j^w) / Y(e^j^w)');
hold on;
plot(1:length(yd),abs(yd),'green');
hold off;

M = 51;
u = ones(1,1000);
ushift = [ zeros(1,M - 1) , ones(1,1000 - M + 1)];
h = u - ushift;
h = 1/M * h;

y = conv(h,x,"full");
xd = DT_Fourier(x,1,w);
yd = DT_Fourier(y,1,w);
subplot(2,2,4);
plot(1:length(xd),abs(xd),'magenta');
grid on;
title('DTFT plots of x[n] and y[n] for M=51');
xlabel('w');
ylabel('X(e^j^w) / Y(e^j^w)');
hold on;
plot(1:length(yd),abs(yd),'green');
hold off;





