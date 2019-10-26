Fs = 12000; %frecventa de esantionare
F =  2 / 0.005; %frecventa unui bit
t = 0:F/Fs:1; 
l = length(t);
n = 0:l-1;
s = rand(1, l) > 0.5; 
%crearea unui vector aleator uniform intre 0 si 1 de lungime l
%iar apoi prelucarea acestuia astfel incat valorile sale sa devina
%stric 0 sau 1.
%% a)
subplot(2,1,1);
plot(t, s);
%% b)
subplot(2,1,2);
stem(n, s);  