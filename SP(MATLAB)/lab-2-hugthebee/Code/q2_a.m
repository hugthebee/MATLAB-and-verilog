% for the transfer function given
p = 0.8;
b = [1];
a = [1,p];

zplane(b,a);
title("Pole-zero plot");