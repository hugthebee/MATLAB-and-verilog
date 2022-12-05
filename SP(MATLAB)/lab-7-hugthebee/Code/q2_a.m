[y,Fs] = audioread("file_example_WAV_10MG.wav");
B=3;
a=1;
q = quadratic_quant(y,B,a);

sound(y,Fs);
pause(2);
sound(q,Fs);