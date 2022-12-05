% implementing the MA function
N = 5; %window length
n = 101; %signal length

inp = zeros(100,1); %making a discrete unit step function
for k = 51:101
    inp(k) = 1;
end
x = cumsum(inp);

for k = 1:N
    y(k) = x(k)/N;
end
for k = N+1:n
    sum = x(k) - x(k-N);
    y(k) = sum/N;
end

disp(y);
figure;
time_grid = 1:n;
stem(time_grid,y,'filled',"red");
title("Moving Average");
xlabel("samples");
ylabel("Average value");