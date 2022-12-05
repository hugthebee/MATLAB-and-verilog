function X = DT_Fourier(x,N0,w)
sum = 0;
len = length(x);
for k=1:len
    e = exp(-1j*w*(k - N0));
    sum = sum + x(k)*e;
end
    X = sum;