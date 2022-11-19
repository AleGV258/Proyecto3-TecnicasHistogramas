%% Escalamiento no lineal de la imagen
%% Entradas
%% I - Imagen de entrada
%% valmax - Valor maximo posible
%% Salida
%% G - Imagen resultante
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [G] = escalNoLineal(I, valmax)
    G = zeros(size(I));
    k = valmax / (log2(valmax + 1));  %% 31.875
    % tabla de equiv. 
    valEscal = zeros(valmax + 1, 1); 
    for i=0:valmax
        valEscal(i + 1) = round(log2(i + 1) * k);
    end
    % aplica los valores escalados a la imagen
    for k=1:size(I, 3) %% cada color
        for i=1:size(I, 1) %% cada renglon
           for j=1:size(I, 2) %% cada columna
             G(i, j, k) = valEscal(I(i, j, k) + 1); 
           end
       end
    end
    G = uint8(G);       
end



