r = 0.5;
p = pi/6; % 30 degrees

% from the transfer function
b = [1, -2*cos(p), 1];
a = [1, -2*r*cos(p),r*r];

figure;
zplane(b,a);
title("Pole-zero plot for r = 0.5 and p = pi/6");

r = 0.25;
p = pi/2; % 90 degrees

% from the transfer function
b = [1, -2*cos(p), 1];
a = [1, -2*r*cos(p),r*r];

figure;
zplane(b,a);
title("Pole-zero plot for r = 0.25 and p = pi/2");