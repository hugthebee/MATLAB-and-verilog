function y = MA_filter(x,w)
x1 = cumsum(x);
n = length(x);
for k = 1:w
    y(k) = x1(k)/w;
end
for k = w+1:n
    sum = x1(k) - x1(k-w);
    y(k) = sum/w;
end
end