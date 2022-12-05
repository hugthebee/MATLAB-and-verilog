r = 0.1:0.01:0.9;
p = pi/3;
n = 1001;

% from the transfer function
b = [1, -2*cos(p), 1];
a = [1, -2.*r.*cos(p),r.*r];

figure;
freqz(b,a,"whole",n);
title("Frequency plot for p = pi/3");