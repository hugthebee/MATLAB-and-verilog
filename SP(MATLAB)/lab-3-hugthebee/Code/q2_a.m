load('q2_1.mat');
% upsampling with zero order hold
M = 3;
len = length(x);
y = zeros(1,M*len);

for k=0:len-1
    w = k*M;
    y(w + 1) = x(k+1);
    for p = 1:M-1
        y(w+1+p) = x(k+1);
    end
end

figure;
stem(0:len-1,x,'filled','red');
title('Upsampling (with zero order hold and M=3)');
xlabel('samples');
ylabel('signal value');
hold on;
stem(0:M*len-1,y,'filled','blue');
hold off;

