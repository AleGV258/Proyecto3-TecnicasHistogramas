%% Histograma de una Imagen
%% Entradas
%% I -Imagen de entrada (de un canal de color)
%% valmax - valor maximo de color
%% Salidas
%% Hist - Histograma que contiene
%%    Primer indice - Valor de intensidad
%%    Segundo indice - 1 Frecuencia
%%                   - 2 Frecuencia Relativa
%%                   - 3 Frec. relat. acumulada 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [ Hist ] = histograma( I, valmax )
    Hist = zeros(valmax + 1, 3);
    total = size(I, 1) * size(I, 2); %% total de pixeles
    for i=1:size(I, 1) %% cada renglon
        for j=1:size(I, 2) %% cada columna
            valor = I(i, j);
            Hist(valor + 1, 1) = Hist(valor + 1, 1) + 1; %% frecuencias
        end
    end
    Hist(:, 2) = Hist(:, 1) / total;  %% frec. relativa %
    Hist(1, 3) = Hist(1, 2);  %% frec. rel. acumulada
    for i=2:(valmax + 1)
           Hist(i, 3) = Hist(i - 1, 3) + Hist(i, 2); %% acmula las frec. relat.
    end
end

