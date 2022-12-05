load('q2_1.mat');
% upsampling with linear interpolation
M = 3;
len = length(x);
y = zeros(1,M*len);

for k=0:len-1
    w = k*M;
    y(w + 1) = x(k+1);
end

figure;
stem(0:len-1,x,'filled','red');
title('Upsampling (with zero order hold)');
xlabel('samples');
ylabel('signal value');
hold on;
stem(0:M*len-1,y,'filled','blue');
hold off;

