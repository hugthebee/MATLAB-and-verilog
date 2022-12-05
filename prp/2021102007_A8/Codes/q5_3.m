N = 3;
n = 0:1000;
k = 0:N;

A = randn([1 N+1]); % standard normal variavbles
X = zeros(1,length(n));

for n = 0:1000
    for k = 0:N
        X(n+1) = X(n+1) + A(k+1)*(n ^ k);
    end
end

% -- finding the mean -- %
mean = cumsum(X);
for n = 0:1000
    mean(n+1) = mean(n+1)/n+1;
end

figure();
plot(1:length(mean),mean,'red');
title("Mean of the random process X[n]");
xlabel("n");
ylabel("\mu[n]");