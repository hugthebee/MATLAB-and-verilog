function Y = continuousFT(t,xt,a,b,w)
expr = xt * exp(-1*1j*w*t);
Y = int(expr,t,[a b]);
end