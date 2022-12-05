%-- T = 1 --%
syms t;
T = 1;
w = -5:0.1:5;
xt = 1;

y = continuousFT(t,xt,-T,T,w);

figure();
subplot(2,2,1);
plot(1:length(y),real(y),'red');
title('Real part of Y(\omega) and T=1');
grid on;
xlabel('\omega');
ylabel('R[Y(\omega)]');
subplot(2,2,2);
plot(1:length(y),imag(y),'red');
title('Imaginary part of Y(\omega) and T=1');
grid on;
xlabel('\omega');
ylabel('I[Y(\omega)]');
subplot(2,2,3);
plot(1:length(y),abs(y),'red');
title('Absolute value of Y(\omega) and T=1');
grid on;
xlabel('\omega');
ylabel('|Y(\omega)|');
subplot(2,2,4);
plot(1:length(y),angle(y),'red');
title('Phase of Y(\omega) and T=1');
grid on;
xlabel('\omega');
ylabel('<Y(\omega)');

%-- T = 4 --%
syms t;
T = 4;
w = -5:0.1:5;
xt = 1;

y = continuousFT(t,xt,-T,T,w);

figure();
subplot(2,2,1);
plot(1:length(y),real(y),'red');
title('Real part of Y(\omega) and T=4');
grid on;
xlabel('\omega');
ylabel('R[Y(\omega)]');
subplot(2,2,2);
plot(1:length(y),imag(y),'red');
title('Imaginary part of Y(\omega) and T=4');
grid on;
xlabel('\omega');
ylabel('I[Y(\omega)]');
subplot(2,2,3);
plot(1:length(y),abs(y),'red');
title('Absolute value of Y(\omega) and T=4');
grid on;
xlabel('\omega');
ylabel('|Y(\omega)|');
subplot(2,2,4);
plot(1:length(y),angle(y),'red');
title('Phase of Y(\omega) and T=4');
grid on;
xlabel('\omega');
ylabel('<Y(\omega)');