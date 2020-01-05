clear;
close all;
%% variabile
P = 40;                         %perioada semnalului
F = 1/P;                        %frecventa semnalului
D = 27;                         %durata in secunde
N = 50;                         %numar coeficienti
Fs = 1000;                      %rezolutia temporala
t = 0:1/Fs:D-1/Fs;              %vector cu valorile de pe axa timpului
n = length(t);                  %lungimea semnalului dreptunghiular
%% calcule
x = 0.5*(square(2*pi*F*t)+1);   %generarea semnalului dreptunghiular 
f = (-n/2:n/2-1)*Fs/n;          %generarea axei frecventelor pentru afisarea spectrului
X = fftshift(fft(x));           %generarea spectrului pentru reconstruirea semnalului dreptunghiular
X(1:n/2-N) = 0;                 %pastrarea primelor N armonice din partea negativa a spectrului
X(n/2+N-1:end) = 0;             %pastrarea primelor N armonice din partea pozitiva a spectrului
x_nou = abs(ifft(ifftshift(X)));%reconstruirea semnalului dreptunghiular
X = abs(X)/n;                   %generarea spectrului pentru afisare
%% afisare grafice
subplot(2,1,1);                 %crearea primului subgrafic
hold on;                        
plot(t,x,'-');                  %afisarea semnalului initial
plot(t,x_nou,'--');             %afisarea semnalului reconstruit
hold off;
title('x(t) si reconstructia folosind N coeficienti');
legend('semnal initial', 'semanl reconstruit');
xlabel('Timp [s]');
ylabel('Amplitudine');
subplot(2,1,2);                 
hold on;
stem(f,X,'.');                  %afisarea spectrului 
plot(f,X,'--');
hold off;
xlim([-1,1]);
xlabel('Frecventa [Hz]');
ylabel('Amplitudine');
title('Spectrul lui x(t)');