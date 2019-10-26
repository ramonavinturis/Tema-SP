function [ y ] = scalare(x, min_nou, max_nou)
%SCALARE Summary of this function goes here
%   Realizeaza scalarea vectorului de la intervalul [min_vechi, max_vechi]
%   la intervalul
%   [min_nou, max_nou]
min_vechi = min(x);
max_vechi = max(x);
y = (x - min_vechi) / ( max_vechi - min_vechi) * (max_nou - min_nou) + min_nou;
end

