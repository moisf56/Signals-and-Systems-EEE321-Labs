 x = DTMFTRA7([8 0 6 3 2]);
%  sound(x,8192)

X = FT(x);

omega=linspace(-8192*pi,8192*pi,10241);
omega=omega(1:10240);
plot(omega, abs(X));
xlabel('omega');
ylabel('Magnitude of Signal X')
x1 = DTMFTRA7(8);
x2 = DTMFTRA7(0);
x3 = DTMFTRA7(6);
x4 = DTMFTRA7(3);
x5 = DTMFTRA7(2);
X1 = FT(x1);

X2 = FT(x2);
X3 = FT(x3);
X4 = FT(x4);
X5 = FT(x5);

% omega2=omega(1:2048);
% figure
% plot(omega2, abs(X1));
% xlabel('omega');
% ylabel('Magnitude of Signal X1')
% 
% figure
% plot(omega2, abs(X2));
% xlabel('omega');
% ylabel('Magnitude of Signal X2')
% 
% figure
% plot(omega2, abs(X3));
% xlabel('omega');
% ylabel('Magnitude of Signal X3')
% 
% figure
% plot(omega2, abs(X4));
% xlabel('omega');
% ylabel('Magnitude of Signal X4')
% 
% figure
% plot(omega2, abs(X5));
% xlabel('omega');
% ylabel('Magnitude of Signal X5')

omega3 = linspace(0,1.25,10240);
rect1 = rectangularPulse(4*omega3-0.5);
rect2 = rectangularPulse(4*omega3-1.5);
rect3 = rectangularPulse(4*omega3-2.5);
rect4 = rectangularPulse(4*omega3-3.5);
rect5 = rectangularPulse(4*omega3-4.5);

x11 = x.*rect1;
figure

plot(rect1)
