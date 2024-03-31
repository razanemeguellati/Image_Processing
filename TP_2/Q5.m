% Lire l'image A
A = imread('image.jpg');

% Créer le masque de filtre accentuateur
accentuate_kernel = [0 -1 0; -1 5 -1; 0 -1 0]; % Exemple de noyau de filtre accentuateur

% Appliquer le filtre accentuateur à l'image A
image_accentuee = imfilter(A, accentuate_kernel);

% Afficher l'image originale dans une figure séparée
figure;
imshow(A);
title('Image Originale');

% Afficher l'image accentuée dans une autre figure séparée
figure;
imshow(image_accentuee);
title('Image Accentuée');