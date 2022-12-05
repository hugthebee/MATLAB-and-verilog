function [t_env, env] = envelope(a,d,s,sd,r,fs)
    %attack
    t_attack = 0:1/fs:a;
    %disp(t_attack)
    env_attack = (1/a)*t_attack;
    %decay
    t_decay = (a+1/fs):1/fs:(a+d);
    %disp(t_decay)
    env_decay = (-1*(1-s)/d)*t_decay;
    env_decay = env_decay+(2 - s);
    %disp(env_decay);
    %disp((s-1)/d)
    %sustain 
    t_sustain = (a+d+1/fs):1/fs:(a+d+sd);
    %disp(t_sustain)
    env_sustain = ones(1,length(t_sustain));
    env_sustain = env_sustain*s;
    %disp(env_sustain);
    %release
    t_release = (a+d+sd+1/fs):1/fs:(a+d+sd+r);
    %length(t_release)
    t0 = 0:s/length(t_release):s;
    %length(t0)
    env_release = flip(t0);
    t_release(length(t_release) + 1) = 0;
    t_env=[t_attack, t_decay, t_sustain, t_release];
    env=[env_attack, env_decay, env_sustain, env_release];
    %disp(env);
end