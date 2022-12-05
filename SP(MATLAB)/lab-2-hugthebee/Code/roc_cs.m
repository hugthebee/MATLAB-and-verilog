function [N,ROC,C,S] = roc_cs(p) % function

% find the unique elements in the absolute value vector of p
p0 = unique(abs(p));
if(p0(1) == 0)
    p0(1) = [];
end

% now number of possible ROC
N = length(p0) + 1;

% inputting into the matrix
ROC = [0,p0; p0,Inf];
ROC = transpose(ROC);

% condition for causality is right sided -> from last pole to infinity
C = zeros(N,1);
C(N) = 1;

% condition for stability is that it should include the unit circle
S = zeros(N,1);
for k=1:(N-1)
    if(ROC(k,1)<1 && ROC(k,2)>1)
            S(k) = 1;
    end
end
S(N) = 0;




