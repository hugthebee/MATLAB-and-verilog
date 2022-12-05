%----- part b ------%
syms t;
T1 = 0.1;
T = 1;
N = 10;
xt = 1;
t1 = -1*T1;
t2 = T1;

F = fourierCoeff(t,xt,T,t1,t2,N);

% plotting scaled coefficients
F1 = 10*F;
F2 = 20*F;
FS_idx = -N:N;

figure; 
stem(FS_idx,F,"filled"); 
grid on;
hold on;
stem(FS_idx,F1,"filled"); 
hold off;
hold on;
stem(FS_idx,F2,"filled"); 
hold off;
title("Scaled Fourier coefficients plot");
ylabel("Fourier coefficients");
xlabel("Samples");
