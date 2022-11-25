%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Proyecto 3. Técnicas de Histogramas                                              %%
%%  Materia: Tópico 1 (Procesamiento Secuencial de Imágenes usando Matlab)           %%
%%  Maestra: Sandra Luz Canchola Magdaleno                                           %%
%%                                                                                   %%
%%  Grupo: 30 - Semestre: 7mo                                                        %%
%%  Integrantes:                                                                     %%
%%   - García Vargas Michell Alejandro - 259663                                      %%
%%   - Jiménez Elizalde Andrés - 259678                                              %%
%%   - León Paulin Daniel - 260541                                                   %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [ImagenHistograma] = TecnicasHistograma(I, tecnica, nombreHistograma, valmax, k, tipo, c, b, m, valIni, valFin)
    %% Selección de qué Técnica de Histograma se va a realizar sobre la imagen, junto con su Histograma
    tic;
    switch tecnica
        case 0
            fprintf("Histograma - %s \n", nombreHistograma);
            ImagenHistograma = I;
            histograma = generarHist(I, valmax); %% Generar Histograma de la Imagen Original
            graficarHist(histograma, 1, strcat("de la Imagen Original - ", nombreHistograma)); %% Graficar Histograma de la Imagen Original
        case 1
            fprintf("Escalamiento Lineal - %s \n", nombreHistograma);
            ImagenHistograma = escalLineal(I, k, tipo, valmax); %% Técnica de Escalamiento Lineal
            histogramaEscalLineal = generarHist(ImagenHistograma, valmax); %% Generar Histograma
            graficarHist(histogramaEscalLineal, 1, strcat("del Escalamiento Lineal - ", nombreHistograma)); %% Graficar Histograma
        case 2
            fprintf("Contraste y Brillo - %s \n", nombreHistograma);
            ImagenHistograma = escalContyBrillo(I, c, b, valmax); %% Técnica de Escalamiento de Contraste y Brillo
            histogramaEscalContyBrillo = generarHist(ImagenHistograma, valmax); %% Generar Histograma
            graficarHist(histogramaEscalContyBrillo, 1, strcat("del Escalamiento de Contraste y Brillo - ", nombreHistograma)); %% Graficar Histograma
        case 3
            fprintf("Escalamiento No Lineal - %s \n", nombreHistograma);
            ImagenHistograma = escalNoLineal(I, valmax); %% Técnica de Escalamiento No Lineal
            histogramaEscalNoLineal = generarHist(ImagenHistograma, valmax); %% Generar Histograma
            graficarHist(histogramaEscalNoLineal, 1, strcat("del Escalamiento No Lineal - ", nombreHistograma)); %% Graficar Histograma
        case 4
            fprintf("Corrección Radiométrica - %s \n", nombreHistograma);
            ImagenHistograma = correccRadiom(I, m, valmax); %% Técnica de Corrección Radiométrica
            histogramaCorreccRadiom = generarHist(ImagenHistograma, valmax); %% Generar Histograma
            graficarHist(histogramaCorreccRadiom, 1, strcat("de la Correcci�n Radiom�trica - ", nombreHistograma)); %% Graficar Histograma
        case 5
            fprintf("Autoescalamiento - %s \n", nombreHistograma);
            ImagenHistograma = autoEscalar(I, valmax); %% Técnica de Autoescalar
            histogramaAutoEscalar = generarHist(ImagenHistograma, valmax); %% Generar Histograma
            graficarHist(histogramaAutoEscalar, 1, strcat("del Autoescalamiento - ", nombreHistograma)); %% Graficar Histograma
        case 6
            fprintf("Ecualizar - %s \n", nombreHistograma);
            histograma = generarHist(I, valmax); %% Generar Histograma de la Imagen Original
            ImagenHistograma = ecualizar(I, histograma, valmax); %% Técnica de Ecualizar
            histogramaEcualizar = generarHist(ImagenHistograma, valmax); %% Generar Histograma
            graficarHist(histogramaEcualizar, 1, strcat("de Ecualizar - ", nombreHistograma)); %% Graficar Histograma
        case 7
            fprintf("Especificar - %s \n", nombreHistograma);
            ImagenHistograma = especifHist(I, valIni, valFin, valmax); %% Técnica de Especificación
            histogramaEspecifHist = generarHist(ImagenHistograma, valmax); %% Generar Histograma
            graficarHist(histogramaEspecifHist, 1, strcat("de Especificar - ", nombreHistograma)); %% Graficar Histograma 
    end
    
    ImagenHistograma = uint8(ImagenHistograma);
    toc;
    fprintf("\n");
end