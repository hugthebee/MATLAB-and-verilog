% the impulse response is found by x[n] = delta[n]
M = 5;
n = 0:1000;
u = ones(1,1000);
ushift = [ zeros(1,M - 1) , ones(1,1000 - M + 1)];
disp(ushift);
disp(u);

h = u - ushift;
h = 1/M * h;

figure;
stem(1:length(h),h);
title('Impulse response');
ylabel('\delta[n]');
xlabel('n');
grid on;