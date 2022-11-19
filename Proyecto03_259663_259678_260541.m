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

clear; %% Limpiar memoria
close all; %% Cerrar ventanas abiertas
clc; %% Limpiar consola
addpath('programas'); %%Añadir al proyecto el directorio de los programas

%RutaIEntrada = 'C:\Users\alegv\OneDrive\Documentos\Escuela\Tópico I\Proyecto\Proyecto3-TecnicasHistogramas\entradas\'; %% Ruta de entrada (lectura) de las imágenes
%RutaISalida = 'C:\Users\alegv\OneDrive\Documentos\Escuela\Tópico I\Proyecto\Proyecto3-TecnicasHistogramas\salidas\'; %% Ruta de salida (escritura) de las imágenes

RutaIEntrada = 'C:\entradas\'; %% Ruta de entrada (lectura) de las imágenes
RutaISalida = 'C:\salidas\'; %% Ruta de salida (escritura) de las imágenes

IObscura1 = imread(strcat(RutaIEntrada, 'ImagenObscura1.jpg')); %% Imagen Obscura 1
IObscura2 = imread(strcat(RutaIEntrada, 'ImagenObscura2.jpg')); %% Imagen Obscura 2
IContraste1 = imread(strcat(RutaIEntrada, 'ImagenContraste1.jpg')); %% Imagen Poco Contraste 1
IContraste2 = imread(strcat(RutaIEntrada, 'ImagenContraste2.jpg')); %% Imagen Poco Contraste 2
IClara1 = imread(strcat(RutaIEntrada, 'ImagenClara1.jpg')); %% Imagen Clara 1
IClara2 = imread(strcat(RutaIEntrada, 'ImagenClara2.jpg')); %% Imagen Clara 2

%% Variables de la Función para las Imágenes Obscuras
valmaxObscura = 255; %% Valor máximo posible
kObscura = 0.00035; %% Constante de escalamiento
tipoObscura = 1; %% Tipo de escalamiento lineal
cObscura = 1.7; %% Constante de contraste
bObscura = 50; %% Constante de brillo
mObscura = 2; %% Exponente
valIniObscura = 100; %% Rango inicial
valFinObscura = 200; %% Rango final
%% Variables de la Función para las Imágenes Contrastantes
valmaxContraste = 255; %% Valor máximo posible
kContraste = 0.00035; %% Constante de escalamiento
tipoContraste = 1; %% Tipo de escalamiento lineal
cContraste = 1.7; %% Constante de contraste
bContraste = 50; %% Constante de brillo
mContraste = 2; %% Exponente
valIniContraste = 100; %% Rango inicial
valFinContraste = 200; %% Rango final
%% Variables de la Función para las Imágenes Claras
valmaxClara = 255; %% Valor máximo posible
kClara = 0.00035; %% Constante de escalamiento
tipoClara = 1; %% Tipo de escalamiento lineal
cClara = 1.7; %% Constante de contraste
bClara = 50; %% Constante de brillo
mClara = 2; %% Exponente
valIniClara = 100; %% Rango inicial
valFinClara = 200; %% Rango final

%% Técnicas de Histogramas probadas en cada Imagen
%% Imagen Obscura 1
TecnicasHistograma(IObscura1, 0, "Primera Imagen Obscura", valmaxObscura, kObscura, tipoObscura, cObscura, bObscura, mObscura, valIniObscura, valFinObscura); %% Imagen Obscura 1 con Generación de su Histograma
Obscura1Lineal = TecnicasHistograma(IObscura1, 1, "Primera Imagen Obscura", valmaxObscura, kObscura, tipoObscura, cObscura, bObscura, mObscura, valIniObscura, valFinObscura); %% Imagen Obscura 1 con Técnica de Escalamiento Lineal
Obscura1ContrasteBrillo = TecnicasHistograma(IObscura1, 2, "Primera Imagen Obscura", valmaxObscura, kObscura, tipoObscura, cObscura, bObscura, mObscura, valIniObscura, valFinObscura); %% Imagen Obscura 1 con Técnica de Contraste y Brillo
Obscura1NoLineal = TecnicasHistograma(IObscura1, 3, "Primera Imagen Obscura", valmaxObscura, kObscura, tipoObscura, cObscura, bObscura, mObscura, valIniObscura, valFinObscura); %% Imagen Obscura 1 con Técnica de Escalamiento No Lineal
Obscura1CorreccionRadiometrica = TecnicasHistograma(IObscura1, 4, "Primera Imagen Obscura", valmaxObscura, kObscura, tipoObscura, cObscura, bObscura, mObscura, valIniObscura, valFinObscura); %% Imagen Obscura 1 con Técnica de Correción Radiométrica
Obscura1Autoescalamiento = TecnicasHistograma(IObscura1, 5, "Primera Imagen Obscura", valmaxObscura, kObscura, tipoObscura, cObscura, bObscura, mObscura, valIniObscura, valFinObscura); %% Imagen Obscura 1 con Técnica de Autoescalamiento
Obscura1Ecualizar = TecnicasHistograma(IObscura1, 6, "Primera Imagen Obscura", valmaxObscura, kObscura, tipoObscura, cObscura, bObscura, mObscura, valIniObscura, valFinObscura); %% Imagen Obscura 1 con Técnica de Ecualización
Obscura1Especificar = TecnicasHistograma(IObscura1, 7, "Primera Imagen Obscura", valmaxObscura, kObscura, tipoObscura, cObscura, bObscura, mObscura, valIniObscura, valFinObscura); %% Imagen Obscura 1 con Técnica de Especificación
%% Imagen Obscura 2
TecnicasHistograma(IObscura2, 0, "Segunda Imagen Obscura", valmaxObscura, kObscura, tipoObscura, cObscura, bObscura, mObscura, valIniObscura, valFinObscura); %% Imagen Obscura 2 con Generación de su Histograma
Obscura2Lineal = TecnicasHistograma(IObscura2, 1, "Segunda Imagen Obscura", valmaxObscura, kObscura, tipoObscura, cObscura, bObscura, mObscura, valIniObscura, valFinObscura); %% Imagen Obscura 2 con Técnica de Escalamiento Lineal
Obscura2ContrasteBrillo = TecnicasHistograma(IObscura2, 2, "Segunda Imagen Obscura", valmaxObscura, kObscura, tipoObscura, cObscura, bObscura, mObscura, valIniObscura, valFinObscura); %% Imagen Obscura 2 con Técnica de Contraste y Brillo
Obscura2NoLineal = TecnicasHistograma(IObscura2, 3, "Segunda Imagen Obscura", valmaxObscura, kObscura, tipoObscura, cObscura, bObscura, mObscura, valIniObscura, valFinObscura); %% Imagen Obscura 2 con Técnica de Escalamiento No Lineal
Obscura2CorreccionRadiometrica = TecnicasHistograma(IObscura2, 4, "Segunda Imagen Obscura", valmaxObscura, kObscura, tipoObscura, cObscura, bObscura, mObscura, valIniObscura, valFinObscura); %% Imagen Obscura 2 con Técnica de Correción Radiométrica
Obscura2Autoescalamiento = TecnicasHistograma(IObscura2, 5, "Segunda Imagen Obscura", valmaxObscura, kObscura, tipoObscura, cObscura, bObscura, mObscura, valIniObscura, valFinObscura); %% Imagen Obscura 2 con Técnica de Autoescalamiento
Obscura2Ecualizar = TecnicasHistograma(IObscura2, 6, "Segunda Imagen Obscura", valmaxObscura, kObscura, tipoObscura, cObscura, bObscura, mObscura, valIniObscura, valFinObscura); %% Imagen Obscura 2 con Técnica de Ecualización
Obscura2Especificar = TecnicasHistograma(IObscura2, 7, "Segunda Imagen Obscura", valmaxObscura, kObscura, tipoObscura, cObscura, bObscura, mObscura, valIniObscura, valFinObscura); %% Imagen Obscura 2 con Técnica de Especificación
%% Imagen Contraste 1
TecnicasHistograma(IContraste1, 0, "Primera Imagen Contraste", valmaxContraste, kContraste, tipoContraste, cContraste, bContraste, mContraste, valIniContraste, valFinContraste); %% Imagen Contraste 1 con Generación de su Histograma
Contraste1Lineal = TecnicasHistograma(IContraste1, 1, "Primera Imagen Contraste", valmaxContraste, kContraste, tipoContraste, cContraste, bContraste, mContraste, valIniContraste, valFinContraste); %% Imagen Contraste 1 con Técnica de Escalamiento Lineal
Contraste1ContrasteBrillo = TecnicasHistograma(IContraste1, 2, "Primera Imagen Contraste", valmaxContraste, kContraste, tipoContraste, cContraste, bContraste, mContraste, valIniContraste, valFinContraste); %% Imagen Contraste 1 con Técnica de Contraste y Brillo
Contraste1NoLineal = TecnicasHistograma(IContraste1, 3, "Primera Imagen Contraste", valmaxContraste, kContraste, tipoContraste, cContraste, bContraste, mContraste, valIniContraste, valFinContraste); %% Imagen Contraste 1 con Técnica de Escalamiento No Lineal
Contraste1CorreccionRadiometrica = TecnicasHistograma(IContraste1, 4, "Primera Imagen Contraste", valmaxContraste, kContraste, tipoContraste, cContraste, bContraste, mContraste, valIniContraste, valFinContraste); %% Imagen Contraste 1 con Técnica de Correción Radiométrica
Contraste1Autoescalamiento = TecnicasHistograma(IContraste1, 5, "Primera Imagen Contraste", valmaxContraste, kContraste, tipoContraste, cContraste, bContraste, mContraste, valIniContraste, valFinContraste); %% Imagen Contraste 1 con Técnica de Autoescalamiento
Contraste1Ecualizar = TecnicasHistograma(IContraste1, 6, "Primera Imagen Contraste", valmaxContraste, kContraste, tipoContraste, cContraste, bContraste, mContraste, valIniContraste, valFinContraste); %% Imagen Contraste 1 con Técnica de Ecualización
Contraste1Especificar = TecnicasHistograma(IContraste1, 7, "Primera Imagen Contraste", valmaxContraste, kContraste, tipoContraste, cContraste, bContraste, mContraste, valIniContraste, valFinContraste); %% Imagen Contraste 1 con Técnica de Especificación
%% Imagen Contraste 2
TecnicasHistograma(IContraste2, 0, "Segunda Imagen Contraste", valmaxContraste, kContraste, tipoContraste, cContraste, bContraste, mContraste, valIniContraste, valFinContraste); %% Imagen Contraste 2 con Generación de su Histograma
Contraste2Lineal = TecnicasHistograma(IContraste2, 1, "Segunda Imagen Contraste", valmaxContraste, kContraste, tipoContraste, cContraste, bContraste, mContraste, valIniContraste, valFinContraste); %% Imagen Contraste 2 con Técnica de Escalamiento Lineal
Contraste2ContrasteBrillo = TecnicasHistograma(IContraste2, 2, "Segunda Imagen Contraste", valmaxContraste, kContraste, tipoContraste, cContraste, bContraste, mContraste, valIniContraste, valFinContraste); %% Imagen Contraste 2 con Técnica de Contraste y Brillo
Contraste2NoLineal = TecnicasHistograma(IContraste2, 3, "Segunda Imagen Contraste", valmaxContraste, kContraste, tipoContraste, cContraste, bContraste, mContraste, valIniContraste, valFinContraste); %% Imagen Contraste 2 con Técnica de Escalamiento No Lineal
Contraste2CorreccionRadiometrica = TecnicasHistograma(IContraste2, 4, "Segunda Imagen Contraste", valmaxContraste, kContraste, tipoContraste, cContraste, bContraste, mContraste, valIniContraste, valFinContraste); %% Imagen Contraste 2 con Técnica de Correción Radiométrica
Contraste2Autoescalamiento = TecnicasHistograma(IContraste2, 5, "Segunda Imagen Contraste", valmaxContraste, kContraste, tipoContraste, cContraste, bContraste, mContraste, valIniContraste, valFinContraste); %% Imagen Contraste 2 con Técnica de Autoescalamiento
Contraste2Ecualizar = TecnicasHistograma(IContraste2, 6, "Segunda Imagen Contraste", valmaxContraste, kContraste, tipoContraste, cContraste, bContraste, mContraste, valIniContraste, valFinContraste); %% Imagen Contraste 2 con Técnica de Ecualización
Contraste2Especificar = TecnicasHistograma(IContraste2, 7, "Segunda Imagen Contraste", valmaxContraste, kContraste, tipoContraste, cContraste, bContraste, mContraste, valIniContraste, valFinContraste); %% Imagen Contraste 2 con Técnica de Especificación
%% Imagen Clara 1
TecnicasHistograma(IClara1, 0, "Primera Imagen Clara", valmaxClara, kClara, tipoClara, cClara, bClara, mClara, valIniClara, valFinClara); %% Imagen Clara 1 con Generación de su Histograma
Clara1Lineal = TecnicasHistograma(IClara1, 1, "Primera Imagen Clara", valmaxClara, kClara, tipoClara, cClara, bClara, mClara, valIniClara, valFinClara); %% Imagen Clara 1 con Técnica de Escalamiento Lineal
Clara1ContrasteBrillo = TecnicasHistograma(IClara1, 2, "Primera Imagen Clara", valmaxClara, kClara, tipoClara, cClara, bClara, mClara, valIniClara, valFinClara); %% Imagen Clara 1 con Técnica de Contraste y Brillo
Clara1NoLineal = TecnicasHistograma(IClara1, 3, "Primera Imagen Clara", valmaxClara, kClara, tipoClara, cClara, bClara, mClara, valIniClara, valFinClara); %% Imagen Clara 1 con Técnica de Escalamiento No Lineal
Clara1CorreccionRadiometrica = TecnicasHistograma(IClara1, 4, "Primera Imagen Clara", valmaxClara, kClara, tipoClara, cClara, bClara, mClara, valIniClara, valFinClara); %% Imagen Clara 1 con Técnica de Correción Radiométrica
Clara1Autoescalamiento = TecnicasHistograma(IClara1, 5, "Primera Imagen Clara", valmaxClara, kClara, tipoClara, cClara, bClara, mClara, valIniClara, valFinClara); %% Imagen Clara 1 con Técnica de Autoescalamiento
Clara1Ecualizar = TecnicasHistograma(IClara1, 6, "Primera Imagen Clara", valmaxClara, kClara, tipoClara, cClara, bClara, mClara, valIniClara, valFinClara); %% Imagen Clara 1 con Técnica de Ecualización
Clara1Especificar = TecnicasHistograma(IClara1, 7, "Primera Imagen Clara", valmaxClara, kClara, tipoClara, cClara, bClara, mClara, valIniClara, valFinClara); %% Imagen Clara 1 con Técnica de Especificación
%% Imagen Clara 2
TecnicasHistograma(IClara2, 0, "Segunda Imagen Clara", valmaxClara, kClara, tipoClara, cClara, bClara, mClara, valIniClara, valFinClara); %% Imagen Clara 2 con Generación de su Histograma
Clara2Lineal = TecnicasHistograma(IClara2, 1, "Segunda Imagen Clara", valmaxClara, kClara, tipoClara, cClara, bClara, mClara, valIniClara, valFinClara); %% Imagen Clara 2 con Técnica de Escalamiento Lineal
Clara2ContrasteBrillo = TecnicasHistograma(IClara2, 2, "Segunda Imagen Clara", valmaxClara, kClara, tipoClara, cClara, bClara, mClara, valIniClara, valFinClara); %% Imagen Clara 2 con Técnica de Contraste y Brillo
Clara2NoLineal = TecnicasHistograma(IClara2, 3, "Segunda Imagen Clara", valmaxClara, kClara, tipoClara, cClara, bClara, mClara, valIniClara, valFinClara); %% Imagen Clara 2 con Técnica de Escalamiento No Lineal
Clara2CorreccionRadiometrica = TecnicasHistograma(IClara2, 4, "Segunda Imagen Clara", valmaxClara, kClara, tipoClara, cClara, bClara, mClara, valIniClara, valFinClara); %% Imagen Clara 2 con Técnica de Correción Radiométrica
Clara2Autoescalamiento = TecnicasHistograma(IClara2, 5, "Segunda Imagen Clara", valmaxClara, kClara, tipoClara, cClara, bClara, mClara, valIniClara, valFinClara); %% Imagen Clara 2 con Técnica de Autoescalamiento
Clara2Ecualizar = TecnicasHistograma(IClara2, 6, "Segunda Imagen Clara", valmaxClara, kClara, tipoClara, cClara, bClara, mClara, valIniClara, valFinClara); %% Imagen Clara 2 con Técnica de Ecualización
Clara2Especificar = TecnicasHistograma(IClara2, 7, "Segunda Imagen Clara", valmaxClara, kClara, tipoClara, cClara, bClara, mClara, valIniClara, valFinClara); %% Imagen Clara 2 con Técnica de Especificación


%% Despliegue de las imágenes
%% Imagen Obscura 1
figure;
subplot(3, 3, 1); imagesc(IObscura1), title('Imagen Original Obscura 1');
subplot(3, 3, 3); imagesc(Obscura1Lineal), title('Imagen Obscura 1 con Escalamiento Lineal');
subplot(3, 3, 4); imagesc(Obscura1ContrasteBrillo), title('Imagen Obscura 1 con Contraste y Brillo');
subplot(3, 3, 5); imagesc(Obscura1NoLineal), title('Imagen Obscura 1 con Escalamiento No Lineal');
subplot(3, 3, 6); imagesc(Obscura1CorreccionRadiometrica), title('Imagen Obscura 1 con Corrección Radiométrica');
subplot(3, 3, 7); imagesc(Obscura1Autoescalamiento), title('Imagen Obscura 1 con Autoescalamiento');
subplot(3, 3, 8); imagesc(Obscura1Ecualizar), title('Imagen Obscura 1 con Ecualización');
subplot(3, 3, 9); imagesc(Obscura1Especificar), title('Imagen Obscura 1 con Especificación');
colormap(gray);
%% Imagen Obscura 2
figure;
subplot(3, 3, 1); imagesc(IObscura2), title('Imagen Original Obscura 2');
subplot(3, 3, 3); imagesc(Obscura2Lineal), title('Imagen Obscura 2 con Escalamiento Lineal');
subplot(3, 3, 4); imagesc(Obscura2ContrasteBrillo), title('Imagen Obscura 2 con Contraste y Brillo');
subplot(3, 3, 5); imagesc(Obscura2NoLineal), title('Imagen Obscura 2 con Escalamiento No Lineal');
subplot(3, 3, 6); imagesc(Obscura2CorreccionRadiometrica), title('Imagen Obscura 2 con Corrección Radiométrica');
subplot(3, 3, 7); imagesc(Obscura2Autoescalamiento), title('Imagen Obscura 2 con Autoescalamiento');
subplot(3, 3, 8); imagesc(Obscura2Ecualizar), title('Imagen Obscura 2 con Ecualización');
subplot(3, 3, 9); imagesc(Obscura2Especificar), title('Imagen Obscura 2 con Especificación');
colormap(gray);
%% Imagen Contraste 1
figure;
subplot(3, 3, 1); imagesc(IContraste1), title('Imagen Original Contraste 1');
subplot(3, 3, 3); imagesc(Contraste1Lineal), title('Imagen Contraste 1 con Escalamiento Lineal');
subplot(3, 3, 4); imagesc(Contraste1ContrasteBrillo), title('Imagen Contraste 1 con Contraste y Brillo');
subplot(3, 3, 5); imagesc(Contraste1NoLineal), title('Imagen Contraste 1 con Escalamiento No Lineal');
subplot(3, 3, 6); imagesc(Contraste1CorreccionRadiometrica), title('Imagen Contraste 1 con Corrección Radiométrica');
subplot(3, 3, 7); imagesc(Contraste1Autoescalamiento), title('Imagen Contraste 1 con Autoescalamiento');
subplot(3, 3, 8); imagesc(Contraste1Ecualizar), title('Imagen Contraste 1 con Ecualización');
subplot(3, 3, 9); imagesc(Contraste1Especificar), title('Imagen Contraste 1 con Especificación');
colormap(gray);
%% Imagen Contraste 2
figure;
subplot(3, 3, 1); imagesc(IContraste2), title('Imagen Original Contraste 2');
subplot(3, 3, 3); imagesc(Contraste2Lineal), title('Imagen Contraste 2 con Escalamiento Lineal');
subplot(3, 3, 4); imagesc(Contraste2ContrasteBrillo), title('Imagen Contraste 2 con Contraste y Brillo');
subplot(3, 3, 5); imagesc(Contraste2NoLineal), title('Imagen Contraste 2 con Escalamiento No Lineal');
subplot(3, 3, 6); imagesc(Contraste2CorreccionRadiometrica), title('Imagen Contraste 2 con Corrección Radiométrica');
subplot(3, 3, 7); imagesc(Contraste2Autoescalamiento), title('Imagen Contraste 2 con Autoescalamiento');
subplot(3, 3, 8); imagesc(Contraste2Ecualizar), title('Imagen Contraste 2 con Ecualización');
subplot(3, 3, 9); imagesc(Contraste2Especificar), title('Imagen Contraste 2 con Especificación');
colormap(gray);
%% Imagen Clara 1
figure;
subplot(3, 3, 1); imagesc(IClara1), title('Imagen Original Clara 1');
subplot(3, 3, 3); imagesc(Clara1Lineal), title('Imagen Clara 1 con Escalamiento Lineal');
subplot(3, 3, 4); imagesc(Clara1ContrasteBrillo), title('Imagen Clara 1 con Contraste y Brillo');
subplot(3, 3, 5); imagesc(Clara1NoLineal), title('Imagen Clara 1 con Escalamiento No Lineal');
subplot(3, 3, 6); imagesc(Clara1CorreccionRadiometrica), title('Imagen Clara 1 con Corrección Radiométrica');
subplot(3, 3, 7); imagesc(Clara1Autoescalamiento), title('Imagen Clara 1 con Autoescalamiento');
subplot(3, 3, 8); imagesc(Clara1Ecualizar), title('Imagen Clara 1 con Ecualización');
subplot(3, 3, 9); imagesc(Clara1Especificar), title('Imagen Clara 1 con Especificación');
colormap(gray);
%% Imagen Clara 2
figure;
subplot(3, 3, 1); imagesc(IClara2), title('Imagen Original Clara 2');
subplot(3, 3, 3); imagesc(Clara2Lineal), title('Imagen Clara 2 con Escalamiento Lineal');
subplot(3, 3, 4); imagesc(Clara2ContrasteBrillo), title('Imagen Clara 2 con Contraste y Brillo');
subplot(3, 3, 5); imagesc(Clara2NoLineal), title('Imagen Clara 2 con Escalamiento No Lineal');
subplot(3, 3, 6); imagesc(Clara2CorreccionRadiometrica), title('Imagen Clara 2 con Corrección Radiométrica');
subplot(3, 3, 7); imagesc(Clara2Autoescalamiento), title('Imagen Clara 2 con Autoescalamiento');
subplot(3, 3, 8); imagesc(Clara2Ecualizar), title('Imagen Clara 2 con Ecualización');
subplot(3, 3, 9); imagesc(Clara2Especificar), title('Imagen Clara 2 con Especificación');
colormap(gray);


%% Escritura de las imágenes en un directorio
%% Imagen Obscura 1
imwrite(Obscura1Lineal, strcat(RutaISalida, 'Obscura1_Lineal.jpg')); %% Almacenar Imagen Obscura 1 con Escalamiento Lineal
imwrite(Obscura1ContrasteBrillo, strcat(RutaISalida, 'Obscura1_ContrasteBrillo.jpg')); %% Almacenar Imagen Obscura 1 con Contraste y Brillo
imwrite(Obscura1NoLineal, strcat(RutaISalida, 'Obscura1_NoLineal.jpg')); %% Almacenar Imagen Obscura 1 con Escalamiento No Lineal
imwrite(Obscura1CorreccionRadiometrica, strcat(RutaISalida, 'Obscura1_CorreccionRadiometrica.jpg')); %% Almacenar Imagen Obscura 1 con Corrección Radiométrica
imwrite(Obscura1Autoescalamiento, strcat(RutaISalida, 'Obscura1_Autoescalamiento.jpg')); %% Almacenar Imagen Obscura 1 con Autoescalamiento
imwrite(Obscura1Ecualizar, strcat(RutaISalida, 'Obscura1_Ecualizar.jpg')); %% Almacenar Imagen Obscura 1 con Ecualización 
imwrite(Obscura1Especificar, strcat(RutaISalida, 'Obscura1_Especificar.jpg')); %% Almacenar Imagen Obscura 1 con Especificación
%% Imagen Obscura 2
imwrite(Obscura2Lineal, strcat(RutaISalida, 'Obscura2_Lineal.jpg')); %% Almacenar Imagen Obscura 2 con Escalamiento Lineal
imwrite(Obscura2ContrasteBrillo, strcat(RutaISalida, 'Obscura2_ContrasteBrillo.jpg')); %% Almacenar Imagen Obscura 2 con Contraste y Brillo
imwrite(Obscura2NoLineal, strcat(RutaISalida, 'Obscura2_NoLineal.jpg')); %% Almacenar Imagen Obscura 2 con Escalamiento No Lineal
imwrite(Obscura2CorreccionRadiometrica, strcat(RutaISalida, 'Obscura2_CorreccionRadiometrica.jpg')); %% Almacenar Imagen Obscura 2 con Corrección Radiométrica
imwrite(Obscura2Autoescalamiento, strcat(RutaISalida, 'Obscura2_Autoescalamiento.jpg')); %% Almacenar Imagen Obscura 2 con Autoescalamiento
imwrite(Obscura2Ecualizar, strcat(RutaISalida, 'Obscura2_Ecualizar.jpg')); %% Almacenar Imagen Obscura 2 con Ecualización 
imwrite(Obscura2Especificar, strcat(RutaISalida, 'Obscura2_Especificar.jpg')); %% Almacenar Imagen Obscura 2 con Especificación

%% Imagen Contraste 1
imwrite(Contraste1Lineal, strcat(RutaISalida, 'Contraste1_Lineal.jpg')); %% Almacenar Imagen Contraste 1 con Escalamiento Lineal
imwrite(Contraste1ContrasteBrillo, strcat(RutaISalida, 'Contraste1_ContrasteBrillo.jpg')); %% Almacenar Imagen Contraste 1 con Contraste y Brillo
imwrite(Contraste1NoLineal, strcat(RutaISalida, 'Contraste1_NoLineal.jpg')); %% Almacenar Imagen Contraste 1 con Escalamiento No Lineal
imwrite(Contraste1CorreccionRadiometrica, strcat(RutaISalida, 'Contraste1_CorreccionRadiometrica.jpg')); %% Almacenar Imagen Contraste 1 con Corrección Radiométrica
imwrite(Contraste1Autoescalamiento, strcat(RutaISalida, 'Contraste1_Autoescalamiento.jpg')); %% Almacenar Imagen Contraste 1 con Autoescalamiento
imwrite(Contraste1Ecualizar, strcat(RutaISalida, 'Contraste1_Ecualizar.jpg')); %% Almacenar Imagen Contraste 1 con Ecualización 
imwrite(Contraste1Especificar, strcat(RutaISalida, 'Contraste1_Especificar.jpg')); %% Almacenar Imagen Contraste 1 con Especificación
%% Imagen Contraste 2
imwrite(Contraste2Lineal, strcat(RutaISalida, 'Contraste2_Lineal.jpg')); %% Almacenar Imagen Contraste 2 con Escalamiento Lineal
imwrite(Contraste2ContrasteBrillo, strcat(RutaISalida, 'Contraste2_ContrasteBrillo.jpg')); %% Almacenar Imagen Contraste 2 con Contraste y Brillo
imwrite(Contraste2NoLineal, strcat(RutaISalida, 'Contraste2_NoLineal.jpg')); %% Almacenar Imagen Contraste 2 con Escalamiento No Lineal
imwrite(Contraste2CorreccionRadiometrica, strcat(RutaISalida, 'Contraste2_CorreccionRadiometrica.jpg')); %% Almacenar Imagen Contraste 2 con Corrección Radiométrica
imwrite(Contraste2Autoescalamiento, strcat(RutaISalida, 'Contraste2_Autoescalamiento.jpg')); %% Almacenar Imagen Contraste 2 con Autoescalamiento
imwrite(Contraste2Ecualizar, strcat(RutaISalida, 'Contraste2_Ecualizar.jpg')); %% Almacenar Imagen Contraste 2 con Ecualización 
imwrite(Contraste2Especificar, strcat(RutaISalida, 'Contraste2_Especificar.jpg')); %% Almacenar Imagen Contraste 2 con Especificación
%% Imagen Clara 1
imwrite(Clara1Lineal, strcat(RutaISalida, 'Clara1_Lineal.jpg')); %% Almacenar Imagen Clara 1 con Escalamiento Lineal
imwrite(Clara1ContrasteBrillo, strcat(RutaISalida, 'Clara1_ContrasteBrillo.jpg')); %% Almacenar Imagen Clara 1 con Contraste y Brillo
imwrite(Clara1NoLineal, strcat(RutaISalida, 'Clara1_NoLineal.jpg')); %% Almacenar Imagen Clara 1 con Escalamiento No Lineal
imwrite(Clara1CorreccionRadiometrica, strcat(RutaISalida, 'Clara1_CorreccionRadiometrica.jpg')); %% Almacenar Imagen Clara 1 con Corrección Radiométrica
imwrite(Clara1Autoescalamiento, strcat(RutaISalida, 'Clara1_Autoescalamiento.jpg')); %% Almacenar Imagen Clara 1 con Autoescalamiento
imwrite(Clara1Ecualizar, strcat(RutaISalida, 'Clara1_Ecualizar.jpg')); %% Almacenar Imagen Clara 1 con Ecualización 
imwrite(Clara1Especificar, strcat(RutaISalida, 'Clara1_Especificar.jpg')); %% Almacenar Imagen Clara 1 con Especificación
%% Imagen Clara 2
imwrite(Clara2Lineal, strcat(RutaISalida, 'Clara2_Lineal.jpg')); %% Almacenar Imagen Clara 2 con Escalamiento Lineal
imwrite(Clara2ContrasteBrillo, strcat(RutaISalida, 'Clara2_ContrasteBrillo.jpg')); %% Almacenar Imagen Clara 2 con Contraste y Brillo
imwrite(Clara2NoLineal, strcat(RutaISalida, 'Clara2_NoLineal.jpg')); %% Almacenar Imagen Clara 2 con Escalamiento No Lineal
imwrite(Clara2CorreccionRadiometrica, strcat(RutaISalida, 'Clara2_CorreccionRadiometrica.jpg')); %% Almacenar Imagen Clara 2 con Corrección Radiométrica
imwrite(Clara2Autoescalamiento, strcat(RutaISalida, 'Clara2_Autoescalamiento.jpg')); %% Almacenar Imagen Clara 2 con Autoescalamiento
imwrite(Clara2Ecualizar, strcat(RutaISalida, 'Clara2_Ecualizar.jpg')); %% Almacenar Imagen Clara 2 con Ecualización 
imwrite(Clara2Especificar, strcat(RutaISalida, 'Clara2_Especificar.jpg')); %% Almacenar Imagen Clara 2 con Especificación








