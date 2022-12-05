N = 2;
n = 0:1000;
%k = 0:N;

A = randn([1 8]); % standard normal variavbles
X = zeros(1,length(n));

for n = 0:1000
    for k = 0:N
        X(n+1) = X(n+1) + A(k+1)*(n ^ k);
    end
end

figure();
plot(1:length(X),X,'magenta');
title("Random process X[n] for N = 2");
xlabel("n");
ylabel("X[n]");
% ------ %

N = 4;
n = 0:1000;
X = zeros(1,length(n));

for n = 0:1000
    for k = 0:N
        X(n+1) = X(n+1) + A(k+1)*(n ^ k);
    end
end

figure();
plot(1:length(X),X,'magenta');
title("Random process X[n] for N = 4");
xlabel("n");
ylabel("X[n]");

% ------ %
N = 5;
n = 0:1000;
X = zeros(1,length(n));

for n = 0:1000
    for k = 0:N
        X(n+1) = X(n+1) + A(k+1)*(n ^ k);
    end
end

figure();
plot(1:length(X),X,'magenta');
title("Random process X[n] for N = 5");
xlabel("n");
ylabel("X[n]");

% ------ %
N = 6;
n = 0:1000;
X = zeros(1,length(n));

for n = 0:1000
    for k = 0:N
        X(n+1) = X(n+1) + A(k+1)*(n ^ k);
    end
end

figure();
plot(1:length(X),X,'magenta');
title("Random process X[n] for N = 6");
xlabel("n");
ylabel("X[n]");

% ------ %
N = 7;
n = 0:1000;
X = zeros(1,length(n));

for n = 0:1000
    for k = 0:N
        X(n+1) = X(n+1) + A(k+1)*(n ^ k);
    end
end

figure();
plot(1:length(X),X,'magenta');
title("Random process X[n] for N = 7");
xlabel("n");
ylabel("X[n]");