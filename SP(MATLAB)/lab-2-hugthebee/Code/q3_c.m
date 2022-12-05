r = 0.95;
p = 0:pi/10:pi;
n = 1001;

% from the transfer function
b = [1, -2*cos(p), 1];
a = [1, -2*r*cos(p),r*r];

figure;
freqz(b,a,"whole",n);
title("Frequency plot for r = 0.95");