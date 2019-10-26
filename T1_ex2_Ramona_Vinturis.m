clear;
close all;
F = 1 / 5; %frecventa semnalului
maxim = 1; %valoarea maxima a semnalului
minim = -2; %valoare minima a semnalului
pas = [0.002, 0.02, 0.2]; %rezolutiile temporale
for i = 1:length(pas) %parcurgerea pasilor
   t = 0:pas(i):10; %crearea axei timpului
   s = sawtooth(2*pi*F*t, 0.6); %crearea semnalului triunghiular
   %0.6 este valoarea relativa la care o sa apara varful triunghiului
   %intr-o perioada. Aceasta valoarea a fost aleasa astfel incat panta
   %pozitiva sa aiba valoarea 1V/s.
   s = scalare(s, minim, maxim); %scalarea semnalului la minim si maxim
   subplot(length(pas),1,i); %crearea unui subgrafic
   plot(t, s), grid; %afisarea graficului
   title(['Semnal triunghiular - Rezolutie temporala ', num2str(pas(i)*1000), 'ms']); %setarea titlului graficului
end 