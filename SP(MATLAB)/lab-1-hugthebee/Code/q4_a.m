%---- first signal ----%
T = 1;
t1 =-0.25;
t2 = 0.25;
N = 2;

syms t0;
x1 = piecewise((t0 > -0.25) & (t0<0), -1*t0 ,(t0 > 0) & (t0< 0.25),t0);
V1 = fourierCoeff(t0, x1, T, t1, t2, N);
fs_idx = -N:N;

figure;
fplot(x1);
hold on;
stem(fs_idx, V1);
title("Fourier Coefficients plot");
xlabel("Samples");
ylabel("Fourier Coefficients");
grid on;
hold off;