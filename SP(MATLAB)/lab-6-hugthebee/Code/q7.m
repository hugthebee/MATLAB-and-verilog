%-- reading the audio signals --%
[y1,Fs1] = audioread("file_example_WAV_1MG.wav");
[y2,Fs2] = audioread("file_example_WAV_2MG.wav");
[y3,Fs3] = audioread("file_example_WAV_5MG.wav");
[y4,Fs4] = audioread("file_example_WAV_10MG.wav");

figure();
subplot(2,2,1);
plot(1:length(y1),y1);
grid on;
title("Audio signal 1");
subplot(2,2,2);
plot(1:length(y2),y2);
grid on;
title("Audio signal 2");
subplot(2,2,3);
plot(1:length(y3),y3);
grid on;
title("Audio signal 3");
subplot(2,2,4);
plot(1:length(y4),y4);
grid on;
title("Audio signal 4");

disp(256*1000*length(y1)*1/Fs1);
disp(512*1000*length(y2)*1/Fs2);
disp(1411*1000*length(y3)*1/Fs3);
disp(1411*1000*length(y4)*1/Fs4);

sound(y4,1.2*Fs4);