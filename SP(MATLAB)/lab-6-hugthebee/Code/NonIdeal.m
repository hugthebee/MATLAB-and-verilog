function B = NonIdeal(A,w0_FS,G,a)
len = length(A);

N = (len-1)/2;
k = -N:N;
w = abs(k*w0_FS);
H = G./(a + w);
B = A .* H;
end