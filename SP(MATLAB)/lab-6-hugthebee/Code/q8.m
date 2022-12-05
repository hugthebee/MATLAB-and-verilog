t_fine = 0:0.001:2;
Ts = 0.1;
t = 0:0.01:2;
xt = cos(5*t);

y = sinc_recon(t,xt,Ts,t_fine);
figure();
subplot(2,2,1);
plot(t_fine,y,'red');
grid on;
title('Sinc interpolation with Ts = 0.1');
xlabel('n');
ylabel('y[n]');

Ts = 0.2;
y = sinc_recon(t,xt,Ts,t_fine);
subplot(2,2,2);
plot(t_fine,y,'red');
grid on;
title('Sinc interpolation with Ts = 0.2');
xlabel('n');
ylabel('y[n]');

Ts = 0.3;
y = sinc_recon(t,xt,Ts,t_fine);
subplot(2,2,3);
plot(t_fine,y,'red');
grid on;
title('Sinc interpolation with Ts = 0.3');
xlabel('n');
ylabel('y[n]');

Ts = 0.4;
y = sinc_recon(t,xt,Ts,t_fine);
subplot(2,2,4);
plot(t_fine,y,'red');
grid on;
title('Sinc interpolation with Ts = 0.4');
xlabel('n');
ylabel('y[n]');