clear;
close all;
F = 1 / 4; %frecventa semnalului
pas = [0.002, 0.02, 0.2]; %rezolutiile temporale
for i = 1:length(pas) %parcurgerea pasilor
   t = 0:pas(i):10; %crearea axei timpului
   s = 1.5 * sin(2*pi*F*t); %crearea semnalului sinusoidal
   s = abs(s); %redresarea dublu alternanta
   subplot(length(pas),1,i); %crearea unui subgrafic
   plot(t, s); %afisarea graficului
   title(['Semnal sin redresat dublu alternanta - Rezolutie temporala ', num2str(pas(i)*1000), 'ms']); %setarea titlului graficului
end 