%---- second signal ----%
% this signal has only imaginary forurier coeffiecinets and hence when we
% plot it since only the real part gets plotted, we get 0 everywhere
% so we plot the magnitude and phase of the imaginary component

syms t00;
T = 1;
t1 =-0.25;
t2 = 0.25;
N = 2;
fs_idx = -N:N;

x2 = piecewise((t00 > -0.25) & (t00<0.25),t00);
V2 = fourierCoeff(t00, x2, T, t1, t2, N);
figure;
fplot(x2);
hold on;
stem(fs_idx, abs(V2));
grid on;
title("Fourier coefficients plot (magnitude)");
ylabel("Fourier coefficients");
xlabel("Samples");
hold off;

figure;
fplot(x2);
title("Fourier coefficients plot (phase)");
ylabel("Fourier coefficients");
xlabel("Samples");
grid on;
hold on;
stem(fs_idx, angle(V2));
hold off;