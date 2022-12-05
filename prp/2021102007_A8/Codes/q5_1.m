N = 3;
n = 0:2017;
k = 0:N;

A = randn([1 N+1]); % standard normal variavbles
X = zeros(1,length(n));

for n = 0:2017
    for k = 0:N
        X(n+1) = X(n+1) + A(k+1)*(n ^ k);
    end
end

figure();
plot(1:length(X),X,'magenta');
title("Random process X[n]");
xlabel("n");
ylabel("X[n]");