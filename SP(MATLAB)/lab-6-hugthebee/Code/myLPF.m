function B = myLPF(A, w0_FS, wc)
len = length(A);

N = (len-1)/2;
for k = -N:N
    if(abs(k*w0_FS) > wc)
        B(k+N+1) = 0;
    else
        B(k+N+1) = A(k+N+1);
    end
end