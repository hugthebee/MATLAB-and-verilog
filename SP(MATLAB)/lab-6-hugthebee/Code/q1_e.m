syms t;
T = pi;
w = -5:0.1:5;

%-- we express the triangle pulse as the convolution of a rectangular pulse
%of a rectangular signal
xt = piecewise(abs(t)<1,1-abs(t),0);

y = continuousFT(t,xt,-T,T,w);

figure();
subplot(2,2,1);
plot(1:length(y),real(y),'red');
title('Real part of Y(\omega)');
grid on;
xlabel('\omega');
ylabel('R[Y(\omega)]');
subplot(2,2,2);
plot(1:length(y),imag(y),'red');
title('Imaginary part of Y(\omega)');
grid on;
xlabel('\omega');
ylabel('I[Y(\omega)]');
subplot(2,2,3);
plot(1:length(y),abs(y),'red');
title('Absolute value of Y(\omega)');
grid on;
xlabel('\omega');
ylabel('|Y(\omega)|');
subplot(2,2,4);
plot(1:length(y),angle(y),'red');
title('Phase of Y(\omega)');
grid on;
xlabel('\omega');
ylabel('<Y(\omega)');