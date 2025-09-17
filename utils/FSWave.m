function [xt] = FSWave(t,K,T,W)
%The function Xt computes the Fourier Synthesis of the function x(t).
%In other words, the function computes X_telda(t) i.e. 
% the approximation of the fourier series over -1.5T<t<-1.5T.
% t: denotes the time grid over which ˜ x(t ) is computed.
% xt: denotes the values of ˜ x(t ) computed over t.
% K, T and W: denote the parameters K, T and W that appear in Eq. 4 and Eq. 5.

s = 1;
for ii = -K:K
    if K==0 
        x_t = @(t)(1-2*t.^2).*exp(-1i*2*pi*ii*t/T);
    end
    if K < 0 
        x_t = @(t)(1-2*t.^2).*exp(-1i*2*pi*(-(ii+1+K))*t/T);
    end
    if K > 0
        x_t = @(t)(1-2*t.^2).*(1i*ii*2*pi/T).*exp(-1i*2*pi*(ii+1-K)*t/T);
    x_k(s) = (1/T)*integral(x_t,-W/2,W/2);
    s = s+1;
end
xt = SUMCS(t,x_k,2*pi*(-K:1:K)/T);
end
%%


    








