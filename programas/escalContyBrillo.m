%% Escalamiento de contraste y brillo de la imagen
%% Entradas
%% I - Imagen de entrada
%% c - constante de contraste
%% b - constante de brillo
%% valmax - Valor maximo posible
%% Salida
%% G - Imagen resultante
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [G] = escalContyBrillo(I, c, b, valmax)
    G = zeros(size(I));
    G = (double(I) * c) + b; 
    % validacion de valores aceptables 
    G = round(G);
    indNegativos = find(G < 0);
    G(indNegativos) = 0;
    indOverflow = find(G > valmax);
    G(indOverflow) = valmax;
    G = uint8(G);       
end

