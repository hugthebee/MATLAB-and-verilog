%loading input from the mat file
load('q1.mat');

% implementing the MA function
N = 100; %window length
n = 101; %signal length
disp(x);
inp = cumsum(x);
disp(inp);

for k = 1:N
    y(k) = inp(k)/N;
end
for k = N+1:n
    sum = inp(k) - inp(k-N);
    y(k) = sum/N;
end

disp(y);
figure;
time_grid = 1:n;
stem(time_grid,y,'filled',"red");
title("Moving Average (with N=100)");
xlabel("samples");
ylabel("Average value");