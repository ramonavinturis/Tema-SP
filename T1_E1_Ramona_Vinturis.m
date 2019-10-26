clear;
%% a) b trebuie sa aiba atatea linii cate coloane are a.
a = 0:0.1:2;
b = ones(length(a), 1);
a * b 
%% b) 
b * a
%% c) pentru realizarea inmultirii element cu element este necesara transpunerea unei matrice din cele doua
a .* b.'