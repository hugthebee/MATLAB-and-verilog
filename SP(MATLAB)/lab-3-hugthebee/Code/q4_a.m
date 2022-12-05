% from the given transfer function H(z)

b = [1 -1 1];
a = [1 -0.95 (0.95*0.95)];

figure;
zplane(b,a);
title('Pole-zero plot');

