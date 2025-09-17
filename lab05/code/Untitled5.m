a = randi([2,6]);
Ts = 20/(20*5);
t = -3:Ts:3.0-Ts;
g = zeros(1,length(t));

for j = 1:length(t)
if abs(t(j)) < 1
if t(j) < 0
g(j) = -2;
elseif t(j) > 0
g(j) = 3;
end
end
end

figure;
stem(t,g);
title('Stem plot');
xlabel('nTs');
ylabel('g(nTs)');

gr = DtoA(0,Ts,6,g);
gr1 = DtoA(1,Ts,6,g);
gr2 = DtoA(2,Ts,6,g);

figure;
plot(linspace(-3,3,length(gr)),gr);
title('Zero Hold Interpolation');
xlabel('Time (t)');
ylabel('gr(Ts)');

figure;
plot(linspace(-3,3,length(gr1)),gr1);
title('Linear Interpolation');
xlabel('Time (t)');
ylabel('gr(Ts)');

figure;
plot(linspace(-3,3,length(gr2)),gr2);
title('Ideal Bandlimited Interpolation');
xlabel('Time (t)');
ylabel('gr(Ts)');

function xR = DtoA(type,Ts,dur,Xn)
p = generateInterp(type,Ts,dur);
xR = zeros(1,length(Xn)*500+length(p));
for x = 1: length(Xn)
xR(1+500*(x-1):500*(x-1)+length(p)) = Xn(x)*p + xR(1+500*(x-1):500*(x-1)+length(p));
end
xR = xR(250*length(Xn)+1: end-250*length(Xn));
end
function [x] = generateInterp(type,Ts,dur)
dur_postive = dur/2;
dur_negative = -0.5*dur;
t = dur_negative:Ts/500:dur_postive;
x = zeros(1,length(t));
if type == 0

for k = 1:length(t)
if (t(1,k) <= (Ts/2)) && (t(1,k) > (-Ts/2))
x(1,k) = 1;
else
x(1,k) = 0;
end
end
elseif type == 1

for k = 1:length(t)
if (t(1,k) <= Ts/2) && (t(1,k) >= -1*Ts/2)
x(1,k) = 1-(abs(t(1,k)/(Ts/2)));
else
x(1,k) = 0;
end
end

else

for k = 1:length(t)
if t(1,k) == 0
x(1,k) = 1;
else
x(1,k) = Ts*sin(pi*t(1,k)/Ts)/(pi*t(1,k));
end
end
end
end

