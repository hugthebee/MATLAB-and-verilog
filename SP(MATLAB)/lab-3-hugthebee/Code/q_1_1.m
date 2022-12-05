load('q1.mat');
% to find the impulse response, we input the impulse function to the system
x1 = zeros(101,1);
x1(1) = 1;

N = 5; %window length
n = 101; %signal length
inp = cumsum(x1);
disp(inp);

for k = 1:N
    h(k) = inp(k)/N;
end
for k = N+1:n
    sum = inp(k) - inp(k-N);
    h(k) = sum/N;
end

disp(h);
figure;
time_grid = 1:n;
stem(time_grid,h,'filled',"red");
title("Impulse Response");
xlabel("n");
ylabel("h[n]");

y = conv(h,x);
figure;
time_grid = 1:length(y);
stem(time_grid,y,'filled',"green");
title("Convolution output");
xlabel("n");
ylabel("y[n]");