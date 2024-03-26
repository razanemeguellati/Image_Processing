image = imread('burger.png');


% Conversion en Niveau de gris 

% Convertir l'image en niveaux de gris en utilisant la fonction rgb2gray
gray = rgb2gray(image);
figure;
imshow(gray);
title('Image en niveaux de gris fonction predefinie');

% Convertir l'image en niveaux de gris en utilisant la formule donnée dans
% le cours 
grayImage = 0.2989 * image(:,:,1) + 0.5870 * image(:,:,2) + 0.1140 * image(:,:,3);
figure;
imshow(grayImage);
title('Image en niveaux de gris avec la formule');



% Conversion en Binaire 

% Choose a threshold value "seuil" ( >0.5 => black , <0.5 => white )
threshold = 0.5;
% has to be done on image nv de gris
binaryImage = imbinarize(grayImage, threshold);
figure;
imshow(binaryImage);
title('Binary Image');


% Tracer l'histogramme de l'image
figure;
imhist(grayImage);
title('Histogramme de l''image en niveaux de gris');
xlabel('Niveau de gris');
ylabel('Nombre de pixels');


% l'image inverse 
inverseImage = 255 - grayImage;
figure;
imshow(inverseImage);
title('Image inverse');



