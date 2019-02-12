function [clin, ref_res] = convolve(x, ref1, y, ref2)
    N = length(x);
    M = length(y);
    
    Nclin = N + M - 1;
    
    clin = zeros(1, Nclin);
    
    for i = 1:N
        for j = 1:M
            clin(i + j - 1) = clin(i + j - 1) + y(j) * x(i);
        end
    end
    
    ref = min(1 - ref1, ref2 - M);
    ref_res = ref1 + ref2 - 1;
end