%% Auto-Escalamiento de la imagen
%% Entradas
%% I - Imagen de entrada
%% valmax - Valor maximo posible
%% Salida
%% G - Imagen resultante
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [ G ] = autoEscalar( I, valmax )
    G = zeros(size(I));
    for canal=1:size(I, 3) %% canales de color
	    %% valores minimos y maximos del canal
        minimo = min(min(I(:, :, canal))); 
        maximo = max(max(I(:, :, canal)));
        fprintf("Canal %d min %d max %d\n", canal, minimo, maximo);
		%% tabla de escalamiento para cada color
        valEscal = zeros(valmax + 1,1); 
        k = valmax / (maximo - minimo);
        for i=0:valmax
            valEscal(i + 1)= round(k * (i - minimo));
        end
		%% asignacion de valores escalados
        for i=1:size(I, 1) %% cada renglon
           for j=1:size(I, 2) %% cada columna
               G(i, j, canal) = valEscal(I(i, j, canal) + 1); 
           end
        end
    end
    G = uint8(G);       
end

