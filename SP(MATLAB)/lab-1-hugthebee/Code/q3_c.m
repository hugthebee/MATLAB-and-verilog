%----- part c ------%
syms t;
T1 = 0.1;
T = 1;
N = 10;
xt = 1;
t1 = -1*T1;
t2 = T1;

F = fourierCoeff(t,xt,T,t1,t2,N);

time_grid = -0.5:0.01:0.5;
Y = partialfouriersum(F,T,time_grid);
figure;
plot(time_grid,Y,"red");
title("Fourier coefficients plot for square wave");
ylabel("Fourier coefficients");
xlabel("Samples");
grid on;
