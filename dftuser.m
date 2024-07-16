function [X , k] = dftuser(xn,L)
    N = length(xn) ;
    X = zeros(1,L) ;
    for k = 1:L
        for n = 1:N 
            X(k) = X(k) + xn(n) * exp(-1i * (2*pi/L) * (k-1) * (n-1));
        end
    end  
    k = 0 : L-1 ;
end