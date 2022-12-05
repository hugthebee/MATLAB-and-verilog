load('q2_2.mat');
% upsampling with linear interpolation
M = 3;
len = length(x);
y = zeros(1,M*len);

for k=0:len-1
    w = k*M;
    y(w + 1) = x(k+1);
    for p = 1:M-1
        % parameters for linear interpolation
        if(k == 0)
            x1 = w;
            y1 = y(w+1);
            x2 = k+M;
            y2 = x(2);
        
            temp = (y2 - y1)/(x2-x1);
            y(w+1+p) = y1 + (w+p - x1) * temp;
            continue;
        end
        x1 = w;
        y1 = y(w+1);
        x2 = (k-1)*M;
        y2 = y((k-1)*M + 1);

        temp = (y2 - y1)/(x2-x1);
        y(w+1-p) = y1 + (w-p - x1) * temp;
       
    end
end

figure;
stem(0:len-1,x,'filled','red');
title('Upsampling (with linear interpolation and M=3)');
xlabel('samples');
ylabel('signal value');
hold on;
stem(0:M*len-1,y,'filled','blue');
hold off;

