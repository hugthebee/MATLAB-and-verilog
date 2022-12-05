function xr = sinc_recon(n,xn,Ts,t_fine)
ws = 2*pi/Ts;
wc = ws/2;
xr = zeros(1,length(t_fine));

for k = 1:length(xn)
num = sin(wc*(t_fine - n(k)*Ts));
deno = pi*(t_fine - n(k)*Ts);
inter = num./deno;
xr = xr + Ts*xn(k)*inter;
end
end