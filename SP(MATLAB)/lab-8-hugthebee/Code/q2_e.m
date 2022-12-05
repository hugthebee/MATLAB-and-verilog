[xn,Fs] = audioread("handel_audio.wav");
n = 1:length(xn);

f0 = 1024;
s1 = sin(2*pi*f0*n);
s1 = transpose(s1);
s = s1 + xn;
%sound(s);
figure();
subplot(2,2,1);
stem(1:100,xn(1:100));
grid on;
title("Original handel audio signal");
xlabel("n");
ylabel("x[n]");

subplot(2,2,2);
stem(1:100,s(1:100));
grid on;
title("Modified audio signal (with noise)");
xlabel("n");
ylabel("x'[n]");

% -- notch filter a -- %
b0 = 1/(2-1.414);

b = [b0 -1*b0*(1.414) b0];
a = [1];

y = filter(b,a,s);
%sound(y);

subplot(2,2,3);
stem(1:100,y(1:100),'red');
grid on;
title("Output audio for filter a");
xlabel("n");
ylabel("y[n]");

% -- notch filter a -- %
b0 = 0.9;

b = [b0 -1*b0*(1.414) b0];
a = [1 -(1.414)*0.9 0.9*0.9];

y=filter(b,a,s);
%sound(y);

subplot(2,2,4);
stem(1:100,y(1:100),'red');
grid on;
title("Output audio for filter b");
xlabel("n");
ylabel("y[n]");
