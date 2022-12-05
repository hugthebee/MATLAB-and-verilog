X = randn(1,5000);
% this is a white guassian random process

figure();
plot(1:length(X),X);
title("Random process X[n]");
xlabel("n");
ylabel("X[n]");