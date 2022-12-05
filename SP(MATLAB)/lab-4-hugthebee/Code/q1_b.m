% -- unit impulse --%
w = -10:0.01:10;
x=zeros(5);
x(3) = 1;
N0 = 3;

X = DT_Fourier(x,N0,w);

figure;
subplot(2,2,1);
plot(1:length(w),abs(X));
title('DTFT magnitude plot of unit impulse');
ylabel('|\delta(e^j^w)|');
xlabel('w');
grid on;

subplot(2,2,2);
plot(1:length(w),angle(X));
title('DTFT phase plot of unit impulse');
ylabel('<\delta(e^j^w)');
xlabel('w');
grid on;

subplot(2,2,3);
plot(1:length(w),real(X));
title('DTFT real plot of unit impulse');
ylabel('R(\delta(e^j^w)');
xlabel('w');
grid on;

subplot(2,2,4);
plot(1:length(w),imag(X));
title('DTFT imaginary plot of unit impulse');
ylabel('I(\delta(e^j^w))');
xlabel('w');
grid on;

% -- shifted unit impulse --%
x=zeros(5);
x(2) = 1;
N0 = 5;

X = DT_Fourier(x,N0,w);

figure;
subplot(2,2,1);
plot(1:length(w),abs(X));
title('DTFT magnitude plot of shifted unit impulse');
ylabel('|\delta(e^j^w)|');
xlabel('w');
grid on;

subplot(2,2,2);
plot(1:length(w),angle(X));
title('DTFT phase plot of shifted unit impulse');
ylabel('<\delta(e^j^w)');
xlabel('w');
grid on;

subplot(2,2,3);
plot(1:length(w),real(X));
title('DTFT real plot of shifted unit impulse');
ylabel('R(\delta(e^j^w))');
xlabel('w');
grid on;

subplot(2,2,4);
plot(1:length(w),imag(X));
title('DTFT imaginary plot of shifted unit impulse');
ylabel('I(\delta(e^j^w))');
xlabel('w');
grid on;

% -- rectangular pulse --%
x = ones(7);
N0 = 4;

X = DT_Fourier(x,N0,w);

figure;
subplot(2,2,1);
plot(1:length(w),abs(X));
title('DTFT magnitude plot of rectangular pulse');
ylabel('|r(e^j^w)|');
xlabel('w');
grid on;

subplot(2,2,2);
plot(1:length(w),angle(X));
title('DTFT phase plot of rectangular pulse');
ylabel('<r(e^j^w)');
xlabel('w');
grid on;

subplot(2,2,3);
plot(1:length(w),real(X));
title('DTFT real plot of rectangular pulse');
ylabel('R(r(e^j^w))');
xlabel('w');
grid on;

subplot(2,2,4);
plot(1:length(w),imag(X));
title('DTFT imaginary plot of rectangular pulse');
ylabel('I(r(e^j^w))');
xlabel('w');
grid on;

% -- finite sinusoid --%
x = zeros(401);
x0 = -200:200;
w0 = pi/4;
x = sin(w0 * x0);
N0 = 201;

X = DT_Fourier(x,N0,w);

figure;
subplot(2,2,1);
plot(1:length(w),abs(X));
title('DTFT magnitude plot of rectangular pulse');
ylabel('|x(e^j^w)|');
xlabel('w');
grid on;

subplot(2,2,2);
plot(1:length(w),angle(X));
title('DTFT phase plot of a finite sinusoid');
ylabel('<x(e^j^w)');
xlabel('w');
grid on;

subplot(2,2,3);
plot(1:length(w),real(X));
title('DTFT real plot of a finite sinusoid');
ylabel('R(x(e^j^w))');
xlabel('w');
grid on;

subplot(2,2,4);
plot(1:length(w),imag(X));
title('DTFT imaginary plot of a finite sinusoid');
ylabel('I(x(e^j^w))');
x1label('w');
grid on;

