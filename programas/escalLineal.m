%% Escalamiento lineal de la imagen
%% Entradas
%% I Imagen de entrada
%% k constante de escalamiento
%% tipo 1- Por renglones
%%      2- Por columna
%%      3- Esquina (inf. derecha)
%%      4- Esquina (sup. izquierda)
%% valmax - Valor maximo posible
%% Salida
%% G Imagen resultante
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [ G ] = escalLineal( I, k, tipo, valmax )
    G = zeros(size(I));
    valor = 0;
    switch tipo
       case 1  %% escalamiento por renglón
         for i=1:size(I, 1) %% cada renglon
           valor = k * i;
           for j=1:size(I, 2) %% cada columna          
              G(i, j, :) = I(i, j, :) + valor; %%(k*#reng)
           end
         end
       case 2 %% escalamiento por columna
         for j=1:size(I, 2) %% cada renglon
           valor = k * j;
           for i=1:size(I, 1) %% cada columna          
              G(i, j, :) = I(i, j, :) + valor; %%(k*#col)
           end
         end          
        case 3 %% escalamiento por esquina inf. derecha
          for i=1:size(I, 1) %% cada renglon
           for j=1:size(I, 2) %% cada columna          
              G(i, j, :) = I(i, j, :) + (k * i * j);  %%(k*#reng*#columna)
           end
          end    
        otherwise %% escalamiento por esquina sup. izquierda
          total = size(I, 1) * size(I, 2);
          for i=1:size(I, 1) %% cada renglon
           for j=1:size(I, 2) %% cada columna          
              G(i, j, :) = I(i, j, :) + (k *(total - (i * j)));  %%(k*#reng*#columna)
           end
          end  
    end
    % validacion de valores aceptables 
    G = round(G);
    indNegativos = find(G < 0);
    G(indNegativos) = 0;
    indOverflow = find(G > valmax);
    G(indOverflow) = valmax;
    G = uint8(G);       
end

