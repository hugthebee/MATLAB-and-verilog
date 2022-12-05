function X = radix2fft(x)

N = length(x);

W = 1;

if (N == 2)
 xtr = transpose(x);
 X = [1 1;1 -1]*xtr;
else
    x_even = x(1:2:end); %values of x at even places
    x_odd = x(2:2:end); %values of x at odd places

    X_even = radix2fft(x_even);
    X_odd = radix2fft(x_odd);

    for k = 1:N/2
    X(k) = X_even(k) + W*X_odd(k);
    X(k + N/2) = X_even(k) - W*X_odd(k);
    W = W * exp(-2*pi*1j*1/N);
    end
end

