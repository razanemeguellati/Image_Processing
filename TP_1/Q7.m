%Q7 Afficher A en niveaux de rouge, niveaux du vert et en niveaux du bleu. 
% Retrouver l’image d’origine.

image = imread('burger.png');
imshow(image);

% Afficher l'image en niveaux de rouge
redChannel = image(:, :, 1); % Extrayez le canal rouge
figure;
imshow(redChannel);
title('Niveaux de rouge');

% Afficher l'image en niveaux de vert
greenChannel = image(:, :, 2); % Extrayez le canal vert
figure;
imshow(greenChannel);
title('Niveaux de vert');

% Afficher l'image en niveaux de bleu
blueChannel = image(:, :, 3); % Extrayez le canal bleu
figure;
imshow(blueChannel);
title('Niveaux de bleu');

% Retrouver l'image d'origine : concatenation des 3 caneaux
reconstructedImage = cat(3, redChannel, greenChannel, blueChannel); % Combinez les canaux de couleur
figure;
imshow(reconstructedImage);
title('Image d''origine');

