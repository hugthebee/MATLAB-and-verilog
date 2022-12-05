%------- PART 2 -------%
%define relevant parameters
syms t00;
T1 = 1;
t1= -T1/2;
t2= T1/2;
N1 = 5;

% define relevant expressions
xt1 = 2*cos(2*pi*t00) + cos(6*pi*t00); % sum of cosines wave

% function call to find FS coefficients
F1 = fourierCoeff(t00,xt1,T1,t1,t2,N1);

time_grid = -0.5:0.01:0.5;
F = partialfouriersum(F1,T1,time_grid);
figure;
plot(time_grid,real(F),"red","LineWidth",1.5);
title("Reconstructed signal");
xlabel("N");
ylabel("Discrete signal");
grid on;
hold on; % plotting original and reconstructed signal on the same plot
fplot(xt1, [time_grid(1),time_grid(length(time_grid))],"green","LineWidth",1.5);
hold off;
