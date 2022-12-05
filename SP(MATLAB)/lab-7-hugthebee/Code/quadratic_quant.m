function y = quadratic_quant(x,B,a)
levels = 2^(B);
levels = levels/2;
range = a;
step = range/levels;
len = length(x);
y = zeros(1,len);

r = 0;
for k=0:levels-1
    for l=1:len
        if(x(l) <= -a)
            y(l) = -a;
        elseif(x(l) >= a)
            y(l) = a;
        elseif((r*r <= x(l)) && (x(l) < (r+step)*(r+step)))
            y(l) = (r*r + (r+step)*(r+step))/2;
        elseif((-1*(r+step)*(r+step) <= x(l)) && (x(l) < -1*r*r))
            y(l) = (-1*r*r + (-1*(r+step)*(r+step)))/2;
        end
    end
    r = r + step;
end
end
