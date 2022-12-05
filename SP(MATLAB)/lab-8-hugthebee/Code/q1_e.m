n1=0:200;
xn = cos(pi*n1*1/16) + 0.25*sin(pi*n1*1/16);

n=0:50;
multiply = 1./(pi*(25-n));
hd = multiply.*(sin(pi/6*(25 - n)));
hd(26) = 0;

% -- making the blackmann window -- %
wn = blackman(51);
wn = transpose(wn);
hn = hd.*wn;

y = conv(xn,hn);
figure();
subplot(3,1,1);
stem(n1,xn,'magenta');
title("Original signal x1[n]");
grid on;
ylabel("x1[n]");
xlabel("n");

subplot(3,1,2);
stem(0:250,y,'red');
title("Output for the blackmann window filter");
grid on;
ylabel("y[n]");
xlabel("n");

multiply = 1./(pi*(25-n));
% hn is just the fist 51 samples of hd because the window will be of
% length 51
hn = multiply.*(sin(pi/6*(25 - n)));
hn(26) = 0;
y = conv(xn,hn);

subplot(3,1,3);
stem(0:250,y,'green');
title("Output for the rectangular window filter");
grid on;
ylabel("y[n]");
xlabel("n");

xn = cos(pi*n1*1/16) + 0.25*randn(1,201);
n=0:50;
multiply = 1./(pi*(25-n));
hd = multiply.*(sin(pi/6*(25 - n)));
hd(26) = 0;

% -- making the blackmann window -- %
wn = blackman(51);
wn = transpose(wn);
hn = hd.*wn;

y = conv(xn,hn);
figure();
subplot(3,1,1);
stem(n1,xn,'magenta');
title("Original signal x2[n]");
grid on;
ylabel("x1[n]");
xlabel("n");

subplot(3,1,2);
stem(0:250,y,'red');
title("Output for the blackmann window filter");
grid on;
ylabel("y[n]");
xlabel("n");

multiply = 1./(pi*(25-n));
% hn is just the fist 51 samples of hd because the window will be of
% length 51
hn = multiply.*(sin(pi/6*(25 - n)));
hn(26) = 0;
y = conv(xn,hn);

subplot(3,1,3);
stem(0:250,y,'green');
title("Output for the rectangular window filter");
grid on;
ylabel("y[n]");
xlabel("n");