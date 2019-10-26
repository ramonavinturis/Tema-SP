clear;
%% a)
pasi = [0.001, 0.01, 0.0002];
F = 50;
for i = 1:length(pasi)
   figure(i);
   t = 0:pasi(i):0.2;
   s = 2*sin(2*pi*F*t);
   plot(t, s, '.-'),xlabel('Timp [s]'),grid;
end
%pas = 0.01 - deoarece rezolutia temporala este prea mare, functia nu seamana cu functia sinus
%pas = 0.0002 - intrucat rezolutia temporala este mai mica, semnalul generat este mult mai fidel functiei sinsu
%% b)
% pentru functia originala avem perioada 20ms (figura 3)
% functia cu pasul de variatie 0.01 nu are perioada masurabila (figura 1)
% functia cu pasul de variatie 0.0002 are perioada 202 ms (figura 2)
%% c)
figure(4); %deschiderea figurii 4

F1 = 20; %frecventa functiei noi
s1 = 2*cos(2*pi*F1*t); %crearea functiei cosinus

hold on; %retinerea graficului 
%pentru suprapunerea mai multor grafice
plot(t, s, '.-b'); %afisarea semnalului original
plot(t, s1, '.-r'); %afisarea semnalului cosinus
xlabel('Timp [s]'),grid;
hold off; %eliberarea graficului
