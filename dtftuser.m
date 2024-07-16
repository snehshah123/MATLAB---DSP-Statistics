function [H] = dtftuser(num, den, w)
    N = length(w);
    H = zeros(size(w));
    for k = 1:N
        H(k) = sum(num .* exp(-1i * w(k) * (0:length(num)-1))) / sum(den .* exp(-1i * w(k) * (0:length(den)-1)));
    end
end
