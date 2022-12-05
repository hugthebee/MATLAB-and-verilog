f0 = 10;
Fs = 5000;
Ts = 1/Fs;
t_sample = 0:Ts:1;
x = sin(2*pi*f0*t_sample);

a=1;
B=4;
xq = quadratic_quant(x,B,a);

figure();
subplot(3,1,1);
plot(t_sample,x);
grid on;
title('Sampled signal (for B = 4)');
xlabel('n');
ylabel('x[n]');
subplot(3,1,2);
plot(t_sample,xq,'red');
grid on;
title('Quantized signal');
xlabel('n');
ylabel('xq[n]');

%-- calculating quantization error --%
e = abs(xq - x);
subplot(3,1,3);
plot(t_sample,e,'magenta');
grid on;
title('Quantization error');
xlabel('n');
ylabel('Error');

%--histogram--%
figure();
histogram(e,15);
title('Histogram of quantization error (for B = 4)');
xlabel('n');
ylabel('Error');

%--FOR B = 3 --%
B=3;
xq = quadratic_quant(x,B,a);

figure();
subplot(3,1,1);
plot(t_sample,x);
grid on;
title('Sampled signal (for B = 3)');
xlabel('n');
ylabel('x[n]');
subplot(3,1,2);
plot(t_sample,xq,'red');
grid on;
title('Quantized signal');
xlabel('n');
ylabel('xq[n]');

%-- calculating quantization error --%
e = abs(xq - x);
subplot(3,1,3);
plot(t_sample,e,'magenta');
grid on;
title('Quantization error');
xlabel('n');
ylabel('Error');

%--histogram--%
figure();
histogram(e,15);
title('Histogram of quantization error (for B = 3)');
xlabel('n');
ylabel('Error');

%-- maximum absolute quantization error --%
error = zeros(1,8);
SQNR = zeros(1,8);
for k=1:8
    xq = quadratic_quant(x,k,a);
    e = abs(xq - x);
    error(k) = max(e);
    sum1=0;
    sum2=0;
    for p=1:length(x)
        s1 = abs(x(p)*x(p));
        sum1 = sum1 + s1;
        s2 = abs(e(p)*e(p));
        sum2 = sum2 + s2;
    end
    SQNR(k) = sum1/sum2;
end
figure();
stem(1:8,error);
title('Change in error as B changes');
xlabel('B');
ylabel('Maximum error');

%-- SQNR --%
figure();
stem(1:8,SQNR,'red');
title('Change in SQNR as B changes');
xlabel('B');
ylabel('SQNR');
