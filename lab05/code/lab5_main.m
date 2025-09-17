dur = mod(21903608,7);
Ts = dur/5;
t = -dur/2:Ts/500:dur/2;
p_z = generateInterp(0,Ts,dur);



figure;
plot(t,p_z);
xlabel('t');
ylabel('p_Z(t)');

p_l = generateInterp(1,Ts,dur);
figure;
plot(t,p_l);
xlabel('t');
ylabel('p_L(t)');

p_i = generateInterp(2,Ts,dur);
figure;
plot(t,p_i);
xlabel('t');
ylabel('p_I(t)');

function xR = DtoA(type,Ts,dur,Xn)
p = generateInterp(type,Ts,dur);
xR = zeros(1,length(Xn)*500+length(p));
for x = 1: length(Xn)
xR(1+500*(x-1):500*(x-1)+length(p)) = Xn(x)p + xR(1+500(x-1):500*(x-1)+length(p));
end
xR = xR(250*length(Xn)+1: end-250*length(Xn));
end

function [p] = generateInterp(type,Ts,dur)
t = -dur/2:Ts/500:dur/2;
p = zeros(1,length(t));

if type == 0
    for k = 1:length(t)
        if (t(1,k) <= (Ts/2)) && (t(1,k) >= (-Ts/2))
            p(1,k) = 1;
        else
            p(1,k) = 0;
        end
    end

elseif type == 1
    for k = 1:length(t)
        if (t(1,k) <= 0.5) && (t(1,k) >= -0.5)
            p(1,k) = 1-(abs(t(1,k)/0.5));
        else
            p(1,k) = 0;
        end
    end

else
    for k = 1:length(t)
        if t(1,k) == 0
            p(1,k) = 1;
        else
            p(1,k) = Ts*sin(pi*t(1,k)/Ts)/(pi*t(1,k));
        end
    end
end
function xR = DtoA(type,Ts,dur,Xn)
p = generateInterp(type,Ts,dur);
xR = zeros(1,length(Xn)*500+length(p));
for x = 1: length(Xn)
xR(1+500*(x-1):500*(x-1)+length(p)) = Xn(x)p + xR(1+500(x-1):500*(x-1)+length(p));
end
xR = xR(250*length(Xn)+1: end-250*length(Xn));
end
end