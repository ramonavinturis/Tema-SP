vector = randn(1, 10);  %se genereaza un vector cu 10 elemente distribuite gaussian
for i = 1:length(vector)%se parcurge vectorul
    if(vector(i) < 0)   %daca elementul este negativ
       vector(i)        %se afiseaza valoarea
    end
end
