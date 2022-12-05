% for the transfer function given
p = 0.5;
b = [1 -2];
a = [1 -p];

figure;
zplane(b,a);
title("Pole-zero plot");

figure;
n = 1001;
freqz(b,a,n,"whole");
title("Discrete Time Fourier Transform");

figure;
impz(b,a);
title("Impulse Response of filter");