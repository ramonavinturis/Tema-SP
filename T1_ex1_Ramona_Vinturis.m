clear;
close all;
F = 1/2; %frecventa semnalului
maxim = 0.5; %nivel maxim al semnalului.
minim = -1; %nivel minim al semanlului
duty = 25; %factor de umplere
pas = [0.002, 0.02, 0.2]; %rezolutiile temporale
for i = 1:length(pas) %parcurgerea pasilor
   t = 0:pas(i):10; %crearea axei timpului
   s = square(2 * pi * F * t, duty); %crearea semnalului
   s = scalare(s, minim, maxim); %scalarea semnalului la minim si maxim
   subplot(length(pas),1,i); %crearea unui subgrafic
   plot(t, s), grid; %afisarea graficului
   title(['Semnal dreptunghiular - Rezolutie temporala ', num2str(pas(i)*1000), 'ms']); %setarea titlului graficului
end 