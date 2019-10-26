function [ma, vp, mt] = T1_E3F_Ramona_Vinturis(v)
    ma=mean(real(v)); %media aritmetica a partilor reale ale elementelor vectorului
    vp=v.^2; %elementele ridicate la patrat. 
    %sau vp=v.*v;
    mt = v*v.'; %vector initial inmultit cu transpusul sau.
end

