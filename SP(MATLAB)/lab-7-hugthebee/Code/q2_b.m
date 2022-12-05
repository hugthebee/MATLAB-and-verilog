[y,Fs] = audioread("file_example_WAV_10MG.wav");
a=1;

for k=1:8
    q = quadratic_quant(y,k,a);
    sound(q/8,Fs);
    pause(duration(y/8));
end

