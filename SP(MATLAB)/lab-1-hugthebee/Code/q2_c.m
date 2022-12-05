%----- part c-------%
syms t00;
T1 = 1;
t1= -T1/2;
t2= T1/2;
N1 = 5;
time_grid = -0.5:0.01:0.5;

xt1 = 2*cos(2*pi*t00) + cos(6*pi*t00);
xt = 2*cos(2*pi*time_grid) + cos(6*pi*time_grid);
F1 = fourierCoeff(t00,xt1,T1,t1,t2,N1);
F = partialfouriersum(F1,T1,time_grid);

% MAXIMUM ABSOLUTE ERROR
mae = 0;
e = 0;
for k = 1:101
    e = abs(xt(k) - F(k));
    if(mae < e)
        mae = e;
    end
end
c = ["MAE =",mae];
disp(c);

% ROOT MEAN SQUARE
rms = 0;
for k = 1:101
    rms = rms + (abs(xt(k) - F(k)) * abs(xt(k) - F(k)));
end

rms = rms/101;
rms = sqrt(rms);
c = ["RMS =",rms];
disp(c);
