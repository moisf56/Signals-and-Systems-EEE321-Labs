dur  = mod(21903608,7);
Ts = dur/5;
pz_0  = generateInterpol(0,Ts,dur);
pz_1 = generateInterpol(1,Ts,dur);
pz_2 = generateInterpol(2,Ts,dur);
figure
plot(pz_0)
figure
plot(pz_1)
figure
plot(pz_2)





function [p] = generateInterpol(type,Ts, dur)
t = -dur/2 : Ts/500 : dur/2;
l = length(t);
switch type
    case 0
        

        p = zeros(1,l);
        p(abs(t)<= Ts/2)=1;
    case 1
        p = zeros(1,l);
        p = max(1-abs(t)/Ts,0);
    case 2
        p = sinc(t/Ts);
        p(t==0) = 1;

end
end

