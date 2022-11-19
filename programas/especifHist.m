%% Especificacion del Hist. de la imagen
%% Entradas
%% I Imagen de entrada  (ecualizada)
%% [ valIni valFin ] - rango especificado
%% valmax - Valor maximo posible
%% Salida
%% G Imagen resultante
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [ G ] = especifHist( I, valIni, valFin, valmax )
    G = zeros(size(I));
    %% histograma especif
    valEscal = zeros(valmax + 1, 3);  %% col 1 - prob. relativa
                                      %% col 2 - prob. relat. acumulada
                                      %% col 3- valor ecualizado
    probInd = 1 / (valFin - valIni + 1);
    valEscal(valIni + 1:valFin + 1, 1) = probInd;
    for i=valIni:valmax
        if (i == 0)
            valEscal(i + 1, 2) = valEscal(i + 1, 1);
        else
            valEscal(i + 1, 2) = valEscal(i + 1, 1) + valEscal(i, 2);
        end
    end
    valEscal(:, 3) = round(valEscal(:, 2) * valmax);  %% valor ecualizado
    %% tabla de eq. inversa
    tabEquiv = zeros(valmax + 1, 1);
    valAnt = 0;
    pos = 1;
    while (valEscal(pos, 3) == 0)
        pos = pos + 1;
    end
    valAct = valEscal(pos, 3);  %% valor ecualizado 
    tabEquiv(valAnt + 1:valAct + 1) = pos - 1;
    valAnt = valAct + 1;
    pos = pos + 1;
    while (valAct < valmax)
        valAct = valEscal(pos, 3);
        tabEquiv(valAnt + 1:valAct + 1) = pos - 1;
        valAnt = valAct + 1;
        pos = pos + 1;
    end
   
   %% asignacion de nuevos valores 
    for canal=1:size(I, 3) %% canales de color
        for i=1:size(I, 1) %% cada renglon
           for j=1:size(I, 2) %% cada columna
               G(i, j, canal) = tabEquiv(I(i, j, canal) + 1); 
           end
        end
    end
    G = uint8(G);       
end

