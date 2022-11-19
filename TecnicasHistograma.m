%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Proyecto 3. T�cnicas de Histogramas                                              %%
%%  Materia: T�pico 1 (Procesamiento Secuencial de Im�genes usando Matlab)           %%
%%  Maestra: Sandra Luz Canchola Magdaleno                                           %%
%%                                                                                   %%
%%  Grupo: 30 - Semestre: 7mo                                                        %%
%%  Integrantes:                                                                     %%
%%   - Garc�a Vargas Michell Alejandro - 259663                                      %%
%%   - Jim�nez Elizalde Andr�s - 259678                                              %%
%%   - Le�n Paulin Daniel - 260541                                                   %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [ImagenHistograma] = TecnicasHistograma(I, tecnica, nombreHistograma, valmax, k, tipo, c, b, m, valIni, valFin)
    %% Selecci�n de que T�cnica de Histograma se va a realizar sobre la imagen, junto con su Histograma
    tic;
    switch tecnica
        case 0
            ImagenHistograma = I;
            histograma = generarHist(I, valmax); %% Generar Histograma de la Imagen Original
            graficarHist(histograma, 1, strcat("de la Imagen Original - ", nombreHistograma)); %% Gr�ficar Histograma de la Imagen Original
        case 1
            ImagenHistograma = escalLineal(I, k, tipo, valmax); %% T�cnica de Escalamiento Lineal
            histogramaEscalLineal = generarHist(ImagenHistograma, valmax); %% Generar Histograma
            graficarHist(histogramaEscalLineal, 1, strcat("del Escalamiento Lineal - ", nombreHistograma)); %% Gr�ficar Histograma
        case 2
            ImagenHistograma = escalContyBrillo(I, c, b, valmax); %% T�cnica de Escalamiento de Contraste y Brillo
            histogramaEscalContyBrillo = generarHist(ImagenHistograma, valmax); %% Generar Histograma
            graficarHist(histogramaEscalContyBrillo, 1, strcat("del Escalamiento de Contraste y Brillo - ", nombreHistograma)); %% Gr�ficar Histograma
        case 3
            ImagenHistograma = escalNoLineal(I, valmax); %% T�cnica de Escalamiento No Lineal
            histogramaEscalNoLineal = generarHist(ImagenHistograma, valmax); %% Generar Histograma
            graficarHist(histogramaEscalNoLineal, 1, strcat("del Escalamiento No Lineal - ", nombreHistograma)); %% Gr�ficar Histograma
        case 4
            ImagenHistograma = correccRadiom(I, m, valmax); %% T�cnica de Correcci�n Radiom�trica
            histogramaCorreccRadiom = generarHist(ImagenHistograma, valmax); %% Generar Histograma
            graficarHist(histogramaCorreccRadiom, 1, strcat("de la Correcci�n Radiom�trica - ", nombreHistograma)); %% Gr�ficar Histograma
        case 5
            ImagenHistograma = autoEscalar(I, valmax); %% T�cnica de Autoescalar
            histogramaAutoEscalar = generarHist(ImagenHistograma, valmax); %% Generar Histograma
            graficarHist(histogramaAutoEscalar, 1, strcat("del Autoescalamiento - ", nombreHistograma)); %% Gr�ficar Histograma
        case 6
            histograma = generarHist(I, valmax); %% Generar Histograma de la Imagen Original
            ImagenHistograma = ecualizar(I, histograma, valmax); %% T�cnica de Ecualizar
            histogramaEcualizar = generarHist(ImagenHistograma, valmax); %% Generar Histograma
            graficarHist(histogramaEcualizar, 1, strcat("de Ecualizar - ", nombreHistograma)); %% Gr�ficar Histograma
        case 7
            ImagenHistograma = especifHist(I, valIni, valFin, valmax); %% T�cnica de Especificaci�n
            histogramaEspecifHist = generarHist(ImagenHistograma, valmax); %% Generar Histograma
            graficarHist(histogramaEspecifHist, 1, strcat("de Especificar - ", nombreHistograma)); %% Gr�ficar Histograma 
    end

    ImagenHistograma = uint8(ImagenHistograma);
    toc;
end