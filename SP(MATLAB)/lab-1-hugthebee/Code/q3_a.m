%----- part a ------%
syms t;
T1 = 0.1;
T = 1;
N = 10;
xt = 1;
t1 = -1*T1;
t2 = T1;

% function call to find FS coefficients
F = fourierCoeff(t,xt,T,t1,t2,N);
FS_idx = -N:N;
figure; 
stem(FS_idx,F,"filled"); 
title("Fourier coefficients plot for square wave");
ylabel("Fourier coefficients");
xlabel("Samples");
grid on;
