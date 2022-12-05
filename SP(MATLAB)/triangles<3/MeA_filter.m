function y = MeA_filter(x,w)
n = length(x);
q = 1;
   for k = 1:(n-w)
       for l = 1:w
          p(l) = x(k+l);
       end
       p = sort(p);
       if (mod(w,2) == 0)
           y(q) = (p(w/2) + p(w/2+1))/2;
           q = q+1;
       else
           y(q) = p((w+1)/2);
           q = q+1;
       end
   end
        