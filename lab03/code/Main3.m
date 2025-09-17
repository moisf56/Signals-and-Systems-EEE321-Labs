% x = DTMFTRA([0 5 3 1 2 9 7 7 1 5 6]);
% % x = DTMFTAR(double('05312977156'));
% soundsc(x, 8192);

%% part 2

% recording = audiorecorder(8192, 8, 1);
% duration = 10;
% disp("Start")
% recordblocking(recording,duration);
% disp("Stop")
play(recording);
x = getaudiodata(recording);
x = x.';
figure
plot(x);
xlabel('t')
ylabel('x(t)')
title("Pure Speech Signal")


echo1 = 0.65*[zeros(1,8192*0.25) x zeros(1,8192*3)];
echo2 = 0.50*[zeros(1,8192*0.75) x zeros(1,8192*2.5)];
echo3 = 0.30*[zeros(1,8192*1) x zeros(1,8192*2.25)];
echo4 = 0.22*[zeros(1,8192*1.25) x zeros(1,8192*2)];
echo5 = 0.15*[zeros(1,8192*2) x zeros(1,8192*1.25)];
echo6 = 0.1*[zeros(1,8192*3.25) x];
x = [x zeros(1,8192*3.25)];
y = x + echo1 + echo2 + echo3 + echo4 + echo5 + echo6;
y_resized = y(1:98304);

% soundsc(y)
% soundsc(y_resized)
figure
plot(y_resized)




xlabel('t');
ylabel('y(t)')
title("Echoed Speech Signal")
Y = FT(y_resized);          %Fourier Transform of Echoed Speech
t = 0:1/8192:12-1/8192;
omega = linspace(-8192*pi,8192*pi,98304);
omega = omega(1:98304);

H = 1 + 0.65*exp(-1j*omega*0.25) + 0.50*exp(-1j*omega*0.75) + 0.30*exp(-...     %Frequency Response
1j*omega*1) + 0.22*exp(-1j*omega*1.25) + 0.15*exp(-1j*omega*2) + 0.1*exp(-...
1j*omega*3.25);


H_magnitude = abs(H);
figure
plot(omega,H_magnitude)
xlabel('Omega')
ylabel('Magnitude of H(jw)')
title("Magnitude of Frequency Response")
h = IFT(H);
figure
plot(t,h)
xlabel('t')
ylabel('h(t)')
title("Impulse Response Function")
X = Y./H;
xe = IFT(X);
soundsc(xe)
figure
plot(xe)
xlabel('t')
ylabel('x_e')
title("Filtered Speech Signal (Estimated X)")