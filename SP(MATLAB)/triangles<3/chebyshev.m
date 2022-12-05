%% PARAMETERS

M = 6;
y = [1, 1, 1, 1, 1, 1];
[x, Fse] = audioread("noisy.wav");
x = x';
Fs = 1500;

%% BAND-IDENTIFICATION

%{
60 : 30-90
150 : 100-200
400 : 250-550
1k : 700-1.3k
2.4k : 2k-2.8k
15k : 12k-18k
%}

centres = [60, 150, 400, 1e3, 2.4e3, 15e3];
passbands = [40,80 ; 120,180 ; 250,550 ; 700,1.3e3 ; 2e3,2.8e3 ; 12e3,18e3];
stopbands = [35,85 ; 105,195 ; 220,580 ; 600,1.4e3 ; 1.8e3,3e3 ; 11.5e3,18.5e3];

%% FILTERING

nWp = [];
for k = 1:6
    [n,Wp] = cheb1ord(passbands(k,:)/20e3, stopbands(k,:)/20e3, 5, 60);
    nWp = [nWp; {n, Wp}];
end

filtba = [];
for k = 1:6
    [b,a] = cheby1(nWp{k,1}, 5, nWp{k,2});
    filtba = [filtba; {b,a}];
end

%% SCALING

% yfilt = filter(filtba{1,1}, filtba{1,2}, x);
xfilt = [];
for k = 1:6
    yfilt = filter(filtba{k,1}, filtba{k,2}, x);
    yfilt = yfilt * y(k);
    xfilt = [xfilt; {yfilt}];
end

%% MERGING

xout = xfilt{1};
for k = 2:6
    xout = xout + xfilt{k};
end