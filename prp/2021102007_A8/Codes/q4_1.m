W = randn(1,1001);
X = zeros(1,1001);
for k = 1:1000
    X(k+1) = (2* W(k+1)) - (4 * W(k));
end

figure();
plot(1:length(X),X,'magenta');
title("Random process X[n]");
xlabel("n");
ylabel("X[n]");