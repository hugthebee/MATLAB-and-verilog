% for the transfer function given
p = -0.8;
b = [1];
a = [1,p];

figure;
zplane(b,a);
title("Pole-zero plot (for p = -0.8)");

figure;
n = 1001;
freqz(b,a,n,"whole");
title("Discrete Time Fourier Transform (for p = -0.8)");

figure;
impz(b,a);2
title("Impulse Response of filter (for p = -0.8)");

p = 0.1;
b = [1];
a = [1,p];

figure;
zplane(b,a);
title("Pole-zero plot (for p = 0.1)");

figure;
n = 1001;
freqz(b,a,n,"whole");
title("Discrete Time Fourier Transform (for p = 0.1)");

figure;
impz(b,a);
title("Impulse Response of filter (for p = 0.1)");