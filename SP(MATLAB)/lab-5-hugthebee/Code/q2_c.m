mean = 1;
var = 1;
x1 = normrnd(mean,var,1,10);
x2 = zeros(1,19);
x2(4) = 1;
N1 = 10;
N2 = 10;
x11 = [x1,zeros(1,N1-1)];

%linear convolution
x1d = fft(x11,N1+N2-1);
x2d = fft(x2,N1+N2-1);

yd = x1d.*x2d;
y = ifft(yd,N1+N2-1);

figure();
subplot(2,2,1);
stem(1:length(y),y,'red');
title('Linear convolution output (using fft)');
ylabel('y[n]');
xlabel('n');
grid on;

%circular convolution
lin = conv(x1,x2);
circ = cconv(x1,x2);

subplot(2,2,2);
stem(1:length(lin),lin,'blue');
title('Linear convolution output');
ylabel('y[n]');
xlabel('n');
grid on;

x1d = fft(x11);
x2d = fft(x2);

yd = x1d.*x2d;
y = ifft(yd);

subplot(2,2,3);
stem(1:length(y),y,'red');
title('Circular convolution output (using fft)');
ylabel('y[n]');
xlabel('n');
grid on;

subplot(2,2,4);
stem(1:length(circ),circ,'blue');
title('Circular convolution output');
ylabel('y[n]');
xlabel('n');
grid on;

