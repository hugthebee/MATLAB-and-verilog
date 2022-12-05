function yn = my_synthesizer(A,F_notes,P,adsr,td_notes,fs)
yn = [];
for k = 1:length(F_notes)
    adsr = adsr*td_notes(k);
    xt = harmonics(A, F_notes(k), P, td_notes(k), fs);
    [t,env] = envelope(adsr(1), adsr(2), adsr(3), adsr(4), adsr(5), fs);
    xt = xt .* env;
    yn = [yn, xt];

end
end