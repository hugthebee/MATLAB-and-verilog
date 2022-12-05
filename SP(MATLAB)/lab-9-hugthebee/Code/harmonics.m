function xn = harmonics(A, f0, P, td, fs)
    N = length(A);
    F = 1 : N;
    F = f0 .* F;
    xn = SineSum(A, F, P, td, fs);
    xn(length(xn) + 1) = 0;
end
