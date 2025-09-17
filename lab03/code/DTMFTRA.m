function [x] = DTMFTRA(Number)
%DTMFTRA Creates the transmission signal of Dual Tone Multi Frequency
%(DTMF), assuming each button is pressed for 0.25 seconds.
%   Number: 1xN vector of integers, contains the phone number that is
%   dialed.
%   x: 1x(0.25*N)/Ts vector, contains the samples of the transmitted
%   signal.
%   (internal) Ts: sampling period.

Ts = 1/8192; %sampling period
N = length(Number); %length of the Number
t = 0:Ts:(0.25*N-Ts); %time vector
T = 0.25/Ts; %length of each tone
%frequency lookup matrix
freq = [941 1336; %0
        697 1209; %1
        697 1336; %2
        697 1477; %3
        770 1209; %4
        770 1336; %5
        770 1447; %6
        852 1209; %7
        852 1336; %8
        852 1477];%9
    
x = zeros(size(t)); %initialize x(t)

for ii = 1:length(Number)
    ni = Number(ii) + 1; %get the right index for freq
    t_current = t(1+(ii-1)*T:ii*T); %isolate current time interval
    %add DTMF cosines to x(t) at the corresponding t interval
    x(1+(ii-1)*T:ii*T) = cos(2*pi*freq(ni,1)*t_current) + ...
        cos(2*pi*freq(ni,2)*t_current);
end

end