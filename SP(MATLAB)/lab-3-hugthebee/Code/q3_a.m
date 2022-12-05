% carrier signal
w0 = 2000;
T0 = 2*pi/w0;

% message signal
f = 100;
A = 5;
T = 0:0.001:1/f;

x = A*sin(2*pi*f*T);

y = cos(20000*T) .* x;

figure;
stem(0:length(x)-1,x,'filled');
title('Amplitude Modulation');
xlabel('samples');
ylabel('signal value');
hold on;
stem(0:length(y)-1,y,'filled','green');
hold off;
