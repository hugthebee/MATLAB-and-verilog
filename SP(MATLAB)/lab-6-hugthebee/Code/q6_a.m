syms t;
xt = piecewise(abs(t)<1,1-abs(t),0);
Ts = 0.5;
t_samples = -1:Ts:1;
t_fine = -10:0.001:10;
