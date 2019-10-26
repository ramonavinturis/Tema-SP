clear;
close all;
durata = 0.25; %durata fiecarui nivel
pas = [0.002, 0.02, 0.2]; %rezolutiile temporale
niveluri = [-7, -5, -3, -1, 1, 3, 5, 7]; %nivelurile semnalelorl
for i = 1:4 %parcurgerea cazurilor
    niv = niveluri(5-i:4+i); %se iau doar valorile [-1, 1] sau [-3, -1, 1, 3], etc.
    t = 0;
    s = niv(1);
    for j = 1:length(pas) %parcurgerea pasilor
        temp = 0:pas(j):durata; %crearea 
        for k = 1:10  
            t = [t, temp + max(t)]; %concatenarea vectorilor pentru axa timpului
            s = [s, niv(randi(length(niv))) * ones(1, length(temp))]; %concatenarea vectorilor pentru semnalul dreptunghiular multinivel
        end
        subplot(4, 3, (i-1)*3+j); %crearea unui subgrafic
        plot(t, s); %afisarea graficului
        title(['Rezolutie temporala ', num2str(pas(j)*1000), 'ms']); %setarea titlului graficului
    end
end
