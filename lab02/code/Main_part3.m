D11 = mod(21903608,11);
D5 = mod(21903608,5);
T = 2;
W=1;
t0 = 0.6;
K1 = 20 + D11;
t = [-5:0.001:5];
xt1 = FSWave(t,K,T,W);

figure; 
title("The signal X_1_t");
plot(t, xt1);
xlabel("t");
ylabel("X_t");
grid on
% figure;
% title("The signal X_1_t");
% subplot(2,1,1)
% plot(t,real(xt1));
% xlabel("t");
% ylabel("Real Part of X_t_1");
% grid on
% subplot(2,1,2);
% plot(t,imag(xt1))
% xlabel("t");
% ylabel("Imaginary Part of X_t_1");
% grid on


% K2 = 2 + D5;
% K3 = 7 + D5;
% K4 = 15 + D5;
% K5 = 50 + D5;
% K6 = 100 + D5;
% xt2 = FSWave(t,K2,T,W);
% xt3 = FSWave(t,K3,T,W);
% xt4 = FSWave(t,K4,T,W);
% xt5 = FSWave(t,K5,T,W);
% xt6 = FSWave(t,K6,T,W);
% figure;
% plot(t,real(xt2));
% xlabel("t");
% ylabel("X_t_2");
% grid on
% title("The signal X_t_2 (K = 5)");
% 
% 
% figure;
% plot(t,real(xt3));
% title("The signal X_t_3 (K = 10)");
% xlabel("t");
% ylabel("X_t_3");
% grid on
% figure;
% plot(t,real(xt4));
% title("The signal X_t_4 (K = 18)");
% xlabel("t");
% ylabel("X_t_4");
% grid on
% figure;
% 
% 
% plot(t,real(xt5));
% 
% title("The signal X_t_5 (K = 53)");
% xlabel("t");
% ylabel("X_t_5");
% grid on
% figure;
% plot(t,real(xt6));
% title("The signal X_t_6 (K = 103)");
% xlabel("t");
% ylabel("X_t_6");
% grid on
% 
% 
% 
