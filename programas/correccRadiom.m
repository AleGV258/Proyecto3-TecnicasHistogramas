%% Correccion Radiometrica de la imagen
%% Entradas
%% I - Imagen de entrada
%% valmax - Valor maximo posible
%% m - exponente
%% Salida
%% G - Imagen resultante
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [G] = correccRadiom(I, m, valmax)   
    %% tabla de equivalencias
    tabla = zeros(valmax + 1, 1);
    k = (valmax) ^ (1 - m);
    for i=0:valmax
        tabla(i + 1) = k * (i ^ m);
    end
    tabla = round(tabla);
    
    %% asigno valores corregidos a la imagen
    G = zeros(size(I));
    for i=1:size(I, 1) %% cada renglon
       for j=1:size(I, 2) %% cada columna
           for k=1:size(I, 3)
              G(i, j, k) = tabla(I(i, j, k) + 1); 
           end
       end
    end
    G = uint8(G);       
end

