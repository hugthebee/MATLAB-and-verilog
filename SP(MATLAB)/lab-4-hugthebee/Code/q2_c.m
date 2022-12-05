% input signal x[n]
M = 5;
w0 = pi/200;
n = 0:999;

s = 5*sin(w0*n);
v = randn(1,1000); % random variable

x = s+v;

figure;
subplot(2,2,1);
plot(1:length(s),s,'red');
grid on;
title('Plots of s[n] and x[n]');
xlabel('n');
ylabel('s[n] / x[n]');
hold on;
plot(1:length(x),x,'blue');
hold off;

% the impulse response is found by x[n] = delta[n]
u = ones(1,1000);
ushift = [ zeros(1,M - 1) , ones(1,1000 - M + 1)];

h = u - ushift;
h = 1/M * h;

% implementing the system using convolution
y = conv(h,x,"full");
subplot(2,2,2);
plot(1:length(y),y,'blue');
grid on;
title('For M = 5');
xlabel('n');
ylabel('s[n] / y[n]');
hold on;
plot(1:length(s),s,'red');
hold off;


M = 21;
u = ones(1,1000);
ushift = [ zeros(1,M - 1) , ones(1,1000 - M + 1)];
h = u - ushift;
h = 1/M * h;

y = conv(h,x,"full");
subplot(2,2,3);
plot(1:length(y),y,'blue');
grid on;
title('For M = 21');
xlabel('n');
ylabel('s[n] / y[n]');
hold on;
plot(1:length(s),s,'red');
hold off;

M = 51;
u = ones(1,1000);
ushift = [ zeros(1,M - 1) , ones(1,1000 - M + 1)];
h = u - ushift;
h = 1/M * h;

y = conv(h,x,"full");
subplot(2,2,4);
plot(1:length(y),y,'blue');
grid on;
title('For M = 51');
xlabel('n');
ylabel('s[n] / y[n]');
hold on;
plot(1:length(s),s,'red');
hold off;






