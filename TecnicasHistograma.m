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
    %% Selección de que Técnica de Histograma se va a realizar sobre la imagen, junto con su Histograma
    tic;
    switch tecnica
        case 0
            ImagenHistograma = I;
            histograma = generarHist(I, valmax); %% Generar Histograma de la Imagen Original
            graficarHist(histograma, 1, strcat("de la Imagen Original - ", nombreHistograma)); %% Gráficar Histograma de la Imagen Original
        case 1
            ImagenHistograma = escalLineal(I, k, tipo, valmax); %% Técnica de Escalamiento Lineal
            histogramaEscalLineal = generarHist(ImagenHistograma, valmax); %% Generar Histograma
            graficarHist(histogramaEscalLineal, 1, strcat("del Escalamiento Lineal - ", nombreHistograma)); %% Gráficar Histograma
        case 2
            ImagenHistograma = escalContyBrillo(I, c, b, valmax); %% Técnica de Escalamiento de Contraste y Brillo
            histogramaEscalContyBrillo = generarHist(ImagenHistograma, valmax); %% Generar Histograma
            graficarHist(histogramaEscalContyBrillo, 1, strcat("del Escalamiento de Contraste y Brillo - ", nombreHistograma)); %% Gráficar Histograma
        case 3
            ImagenHistograma = escalNoLineal(I, valmax); %% Técnica de Escalamiento No Lineal
            histogramaEscalNoLineal = generarHist(ImagenHistograma, valmax); %% Generar Histograma
            graficarHist(histogramaEscalNoLineal, 1, strcat("del Escalamiento No Lineal - ", nombreHistograma)); %% Gráficar Histograma
        case 4
            ImagenHistograma = correccRadiom(I, m, valmax); %% Técnica de Corrección Radiométrica
            histogramaCorreccRadiom = generarHist(ImagenHistograma, valmax); %% Generar Histograma
            graficarHist(histogramaCorreccRadiom, 1, strcat("de la Corrección Radiométrica - ", nombreHistograma)); %% Gráficar Histograma
        case 5
            ImagenHistograma = autoEscalar(I, valmax); %% Técnica de Autoescalar
            histogramaAutoEscalar = generarHist(ImagenHistograma, valmax); %% Generar Histograma
            graficarHist(histogramaAutoEscalar, 1, strcat("del Autoescalamiento - ", nombreHistograma)); %% Gráficar Histograma
        case 6
            histograma = generarHist(I, valmax); %% Generar Histograma de la Imagen Original
            ImagenHistograma = ecualizar(I, histograma, valmax); %% Técnica de Ecualizar
            histogramaEcualizar = generarHist(ImagenHistograma, valmax); %% Generar Histograma
            graficarHist(histogramaEcualizar, 1, strcat("de Ecualizar - ", nombreHistograma)); %% Gráficar Histograma
        case 7
            ImagenHistograma = especifHist(I, valIni, valFin, valmax); %% Técnica de Especificación
            histogramaEspecifHist = generarHist(ImagenHistograma, valmax); %% Generar Histograma
            graficarHist(histogramaEspecifHist, 1, strcat("de Especificar - ", nombreHistograma)); %% Gráficar Histograma 
    end

    ImagenHistograma = uint8(ImagenHistograma);
    toc;
end