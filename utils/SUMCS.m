function [xs] = SUMCS(t, A, omega)
%SUMCS Computes xs as the linear sum of M complex exponentials sampled at
%time points given from t, with amplitude information in A and angular
%frequency information in omega.
%   t: 1×N vector that contains the time instants over which xs(t) is computed
%   A: 1×M complex-valued vector. i^{th} element is A_i
%   omega: 1×M vector. i^{th} element is ω_i
M = length(A);
xs = zeros(size(t));

for ii = 1:M
    xs = xs + A(ii)*exp(1j*omega(ii)*t);
end

end

