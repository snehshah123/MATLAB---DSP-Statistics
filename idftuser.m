function [xn, n] = idftuser(X , N)
    L = length(X) ; 
    xn = [zeros(1,N)] ;
    for k = 1:N
        for n = 1:L 
            xn(n) = xn(n) + X(k) * exp(1i * (2*pi/L) * (k-1) * (n-1)) ;
        end
    end  
   xn = xn/L ; n = 0 : N-1 ;
end