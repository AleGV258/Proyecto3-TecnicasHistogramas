%% Ecualizacion de la imagen
%% Entradas
%% I - Imagen de entrada
%% Hist - Histograma que contiene
%%  primera dimension - canal de color
%%  segunda dimension - valor del pixel
%%  tercera dimension - valor del histograma
%%      primer columna - frecuencia
%%      segunda columna - frec. relativa
%%      tercer columna - frec. relativa acum. 
%% valmax - Valor maximo posible
%% Salida
%% G - Imagen resultante
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [ G ] = ecualizar( I, Hist, valmax )
    G=zeros(size(I));
    for canal=1:size(I, 3) %% canales de color
        %% tabla de escalamientos
        valEscal = zeros(valmax + 1, 1); 
        for i=0:valmax
            valEscal(i + 1) = round(Hist(canal, i + 1, 3) * valmax);  %% Frec. rel. acum. * valor maximo
        end
        %% asignar valores escalados
        for i=1:size(I, 1) %% cada renglon
           for j=1:size(I, 2) %% cada columna
               G(i, j, canal) = valEscal(I(i, j, canal) + 1); 
           end
        end
    end
    G = uint8(G);       
end

