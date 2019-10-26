%% a)
clear;
figure(1); %deschiderea primei figuri
z=zeros(1, 21); %crearea unui vector cu 21 de zero.
z(6)=1; %setarea celui de-al 6-lea element din vector cu valoarea 1
n= 0:20;
subplot(2,1,1); 
stem(n,z); %afisarea graficului z(n)
m= -5:15;
subplot(2,1,2);
stem(m, z); %afisarea graficului z(m)
%% b)
figure(2) %deschiderea figurii 2.
t=abs(10-n); %crearea vectorului de afisat
stem(n,t); %afisarea graficului lui t(n);
%% c) plot
pas=0.1; %pas mic pentru o functie cat mai netezita
n1=-15:pas:25; %crearea vectorului n pentru x1
x1=sin(pi*n1/17); %crearea functiei x1 
n2=0:pas:50; %crearea vectorului n pentru x2
x2=cos(pi*n2/sqrt(23)); %crearea functiei x2
figure(1); %deschiderea figurii 1
plot(n1, x1, n2, x2); %afisarea ambelor functii pe acelasi grafic
figure(2); %deschiderea figurii 2
subplot(2,1,1); 
plot(n1,x1); %afisarea functiei x1(n) pe prima jumatate a figurii
subplot(2,1,2);
plot(n2,x2); %afisarea functiei x2(n) pe a doua fumatate a figurii
%% c) stem
n1=-15:25; %crearea vecotrului n pentru x1
x1=sin(pi*n1/17); %createa funcitie x1
n2=0:50; %create vectorului n pentru x2
x2=cos(pi*n2/sqrt(23)); %crearea functiei x2
figure(1); %deschiderea figurii 1
stem(n1, x1); %afisarea functiei discrete x1
hold on; %retinerea graficului curent pentru a adauga o noua functie
stem(n2, x2); %afisarea functiei discrete x2
hold off; %eliberarea graficului curent
figure(2); %deschiderea figurii 2
subplot(2,1,1);
stem(n1,x1); %afisarea functiei discrete x1 pe prima jumatate a figurii
subplot(2,1,2);
stem(n2,x2); %afisarea functiei discrete x2 pe a doua jumatate a figurii

