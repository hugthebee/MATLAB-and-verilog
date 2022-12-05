clear a;
a = arduino("/dev/cu.usbmodem13301","Uno");
k = 1;
y = 0;
while(k < 100)
    x = readVoltage(a,"A0");
    y = [y,x];
    pause(0.02);
    k = k+1;
    disp(y(k));
end
y = MA_filter(y,10);
figure();
clf;
plot(1:length(y),y);

%playTone(a, "D7", y, 1);

%[y,Fs] = audioread("Titanic-Flute-Fail.wav");

for k = 1 : 25
    playTone(a, "D7", 500 + k * 100, 1);
    pause(0.02);
end
for k = 25 : -1 : 1
    playTone(a, "D7", 500 + k * 100, 1);
end


