function x = Inverse_DTFT(X,w,n,l1,l2)
e = exp(1j*w*n);
x = int(X*e,l1,l2);
x = x/(2*pi);
