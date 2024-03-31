% filtre passe haut lets only countours (high frequency points) passe 

% Lire une image en couleur
image_originale = imread('image.jpg');
% Appliquer un filtre passe-haut sans moyenne
h_passhaut = fspecial('laplacian', 0); % Filtre Laplacien pour le passe-haut
image_filtree_passhaut = imfilter(image_originale, h_passhaut);

% Appliquer un filtre passe-haut avec moyenne
h_passhaut_moyenne = fspecial('average', [3 3]); % Filtre de moyenne pour lisser l'image avant d'appliquer le passe-haut
image_lissee = imfilter(image_originale, h_passhaut_moyenne);
image_filtree_passhaut_moyenne = image_originale - image_lissee;

% Afficher les résultats dans des figures séparées
figure;
imshow(image_originale, []);
title('Image Originale');

figure;
imshow(image_filtree_passhaut, []);
title('Filtre Passe-Haut Sans Moyenne');

figure;
imshow(image_filtree_passhaut_moyenne, []);
title('Filtre Passe-Haut Avec Moyenne');

