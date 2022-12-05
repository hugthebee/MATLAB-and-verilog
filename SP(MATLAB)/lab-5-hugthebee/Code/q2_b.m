% making a gaussian random sequence
mean = 1;
var = 1;
x1 = normrnd(mean,var,1,10);
x2 = zeros(1,10);
x2(4) = 1;

lin = conv(x1,x2);
circ = cconv(x1,x2);

figure();
subplot(2,1,1);
stem(1:length(lin),lin,'red');
title('Linear convolution output');
ylabel('y[n]');
xlabel('n');
grid on;
subplot(2,1,2);
stem(1:length(circ),circ,'blue');
title('Circular convolution output');
ylabel('y[n]');
xlabel('n');
grid on;

