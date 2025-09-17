t = 0:0.001:1;
n = mod(21903608, 41); n=14
A = 3*rand(1,n) + 3j*rand(1,n);

omega = pi*rand(1,n);


y = SUMCS(t, A, omega);

%% Plots for Real and Imaginary Parts of X_s
figure
subplot(1,2,1)
plot(t,real(y),'r')
grid on
title("Real Part of X_s")
xlabel("t")
ylabel("Real(Xs)")
subplot(1,2,2)
plot(t, imag(y), 'b')
grid on
title("Imaginary Part of X_s")
xlabel("t")
ylabel("Imag(Xs)")

%% Plots for Magnitude and Phase of X_s
figure
subplot(1,2,1)
plot(t, abs(y))
title("Magnitude of X_s")
xlabel("t")
ylabel("|X_s|")
grid on
subplot(1,2,2)
plot(t, angle(y))
title("Phase of X_s")
xlabel("t")
ylabel("\angle{X_s}")
grid on
