N = 5;
for k = 1:N
    A(k) = 1/(k^2);
end
P = zeros(1,N);
fs = 10000;
adsr = [0.2,0.2,0.7,0.4,0.2];

F_notes = 100:-10:40;
td_notes=ones(1,length(F_notes));
yn = my_synthesizer(A,F_notes,P,adsr,td_notes,fs);
soundsc(yn);
