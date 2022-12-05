t_fine = 0:0.001:2;
xt = cos(5*pi*t_fine) + sin(10*pi*t_fine);
figure();
plot(t_fine,xt,linewidth=1);
title('Plotting x(t)');
ylabel('y(t)/y[n]');
xlabel('t/n');
grid on;
hold on;

Ts = 0.1;
t_samples = 0:Ts:2;
xt = cos(5*pi*t_samples) + sin(10*pi*t_samples);
stem(t_samples,xt,'red','filled');
hold off;