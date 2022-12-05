syms w;
w1 = pi/8;
w2 = pi/2;
n = -100:100;

X = piecewise(w1 <= abs(w) <= w2, 1 , (abs(w) < w1) & (w2 < abs(w) < pi), 0);
x = Inverse_DTFT(X,w,n,-1*pi,pi);

figure;
subplot(2,2,1);
stem(n,abs(x),'filled');
title('Inverse DTFT magnitude plot');
ylabel('|x[n]|');
xlabel('n');

subplot(2,2,2);
stem(n,angle(x),'filled');
title('Inverse DTFT phase plot');
ylabel('<x[n]');
xlabel('n');

subplot(2,2,3);
stem(n,real(x),'filled');
title('Inverse DTFT real plot');
ylabel('R(x[n])');
xlabel('n');at

subplot(2,2,4);
stem(n,imag(x),'filled');
title('Inverse DTFT imaginary plot');
ylabel('I(x[n])');
xlabel('n');