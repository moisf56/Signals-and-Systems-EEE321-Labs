tic
a=(1:0.01:2);
toc
a2 = 1:2;

vector =[]; 
disp(vector);
tic
for i = 1:0.01:2
    vector(end+1) = i;
end
toc

vector2 = zeros(1,101);
disp(vector2);
vector2(1) = 1;
tic
for n=1:100
    vector2(n+1) = vector2(n) +0.01;
end
disp(vector2)
toc

%part_2
t= [0:1/8192:1];
f_01 = 440; %hz
f_02 = 687;
f_03 = 883;
x01= cos((2*f_01*pi).*t);
x02= cos((2*f_02*pi).*t);
x03 = cos((2*f_03*pi).*t);
% figure()
% plot(t,x1);
%sound(x01)
%sound(x02)
% sound(x03)

%sound becomes sharper as we increase the frequency
f_1=330; %hz
a_1= 7;
a_2 = 2;
a_3 = 4;
a_4 = 11;
x20 = (exp(-a_1.*t)).*(cos((2*f_1*pi).*t));
figure()
hold on
plot(t,x20);
sound(x20)
%adding e^-(ax) damps the sinusoid

x_21= (exp(-a_2.*t)).*(cos((2*f_1*pi).*t));
plot(t,x_21);
x_22=(exp(-a_3.*t)).*(cos((2*f_1*pi).*t));
plot(t,x_22);
x_23 = (exp(-a_4.*t)).*(cos((2*f_1*pi).*t));
plot(t,x_23);
%sound(x_21);
%sound(x_22)
% sound(x_23)

%as a increases the sound gets damped faster, at a=4 the sound lasted the
%most
f0=510;
f1=4;
x_3 = cos((2*pi*f0).*t).*cos((2*pi*f1).*t);
sound(x_3)
figure()
plot(t,x_3)
% it makes the sound oscillate (the sounds intensity is changing) in other
% words, due to the low freq cosine, the main frequency of the signal is
% varying
rand_a =1665;

x_4 = cos((pi*rand_a.*(t.*t)));
%sound(x_4)
x_41 = cos((pi*(rand_a/2).*(t.*t)));
%sound(x_41)        %when a is halved the sound lasts longer and it gets
%deeper
x_42= cos((pi*(2*rand_a).*(t.*t)));
%sound(x_42)
%when doubling rand_a the sound is played faster and it gets squickier

x5 = cos((2*pi).*((-500.*t.*t)+(1600.*t)));

%part4
phi1 = 0;
phi2 = (pi/4);
phi3 = (pi/2);
phi4 = (0.75*pi);
phi5 = pi;
x61 = cos((2*pi*1665).*(t) +phi1);
x62 = cos((2*pi*1665).*(t)) +phi2);
x63 = cos((2*pi*1665).*(t) +phi3);
x64 = cos((2*pi*1665).*(t) +phi4);
x65 = cos((2*pi*1665).*(t) +phi5);
sound(x61)
sound(x62)
sound(x63)
sound(x64)
sound(x65)

%sound(x6);


    
    

    