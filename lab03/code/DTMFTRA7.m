function [y]=DTMFTRA(Number)

Ts = 1/8192; %sampling period
N = length(Number);
t = 0:Ts:(0.25-Ts);
y =[];

x = zeros(1, (length(t)*length(Number))); %initialize x(t)

for ii = 1:length(Number)
    if Number(ii) == 1
        x((ii-1)*length(t)+1:ii*length(t))=  cos(2*pi*697*t) + cos(2*pi*1209*t);
    elseif Number(ii) == 2
        x((ii-1)*length(t)+1:ii*length(t)) = cos(2*pi*697*t) + cos(2*pi*1336*t);
    elseif Number(ii) == 3
        x((ii-1)*length(t)+1:ii*length(t)) = cos(2*pi*697*t) + cos(2*pi*1477*t);
    elseif Number(ii) == 4
        x((ii-1)*length(t)+1:ii*length(t)) = cos(2*pi*770*t) + cos(2*pi*1209*t);
    elseif Number(ii) == 5
        x((ii-1)*length(t)+1:ii*length(t)) = cos(2*pi*770*t) + cos(2*pi*1336*t);
    elseif Number(ii) == 6
        x((ii-1)*length(t)+1:ii*length(t)) = cos(2*pi*770*t) + cos(2*pi*1477*t);
    elseif Number(ii) == 7
        x((ii-1)*length(t)+1:ii*length(t)) = cos(2*pi*852*t) + cos(2*pi*1209*t);
    elseif Number(ii) == 8
        x((ii-1)*length(t)+1:ii*length(t)) = cos(2*pi*852*t) + cos(2*pi*1336*t);
    elseif Number(ii) == 9
        x((ii-1)*length(t)+1:ii*length(t)) = cos(2*pi*852*t) + cos(2*pi*1477*t);
    elseif Number(ii) == 0
        x((ii-1)*length(t)+1:ii*length(t)) = cos(2*pi*941*t) + cos(2*pi*1336*t);
    end     
end
y =x;
end