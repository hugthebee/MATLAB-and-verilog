%-- taking x[n] as a sinusoid signal --%
t = 0:pi/4:5*pi;
t_fine = 0:pi/16:5*pi;

xt = sin(t);
figure();
subplot(2,2,1);
stem(t,xt,'filled');
title('Original signal');
ylabel('y[n]');
xlabel('n');
grid on;

%-- zero order interpolation -%
y = interp1(t,xt,t_fine,"previous");
subplot(2,2,2);
stem(t_fine,y,'filled','red');
title('Zero order interpolation');
ylabel('y[n]');
xlabel('n');
grid on;

% MAXIMUM ABSOLUTE ERROR
mae = 0;
e = 0;
for k = 1:21
    e = abs(xt(k) - y(k));
    if(mae < e)
        mae = e;
    end
end
c = ["MAE =",mae];
disp(c);

%-- linear interpolation -%
y = interp1(t,xt,t_fine,"linear");
subplot(2,2,3);
stem(t_fine,y,'filled','magenta');
title('Linear interpolation');
ylabel('y[n]');
xlabel('n');
grid on;

% MAXIMUM ABSOLUTE ERROR
mae = 0;
e = 0;
for k = 1:21
    e = abs(xt(k) - y(k));
    if(mae < e)
        mae = e;
    end
end
c = ["MAE =",mae];
disp(c);

%-- sinc interpolation -%
Ts = 0.2;
t_fine = 0:0.01:2;
y = sinc_recon(t,xt,Ts,t_fine);
subplot(2,2,4);
stem(t_fine,y,'filled','magenta');
title('Sinc interpolation');
ylabel('y[n]');
xlabel('n');
grid on;

% MAXIMUM ABSOLUTE ERROR
mae = 0;
e = 0;
for k = 1:21
    e = abs(xt(k) - y(k));
    if(mae < e)
        mae = e;
    end
end
c = ["MAE =",mae];
disp(c);