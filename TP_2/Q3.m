%Filtrer ces deux images bruitées en utilisant les filtres vus en cours (filtre passe bas, médian ).

% Lire une image en niveaux de gris
image_originale = imread('image.jpg');
if size(image_originale, 3) == 3
    image_originale = rgb2gray(image_originale);
end

% Ajouter un bruit de type poivre et sel
image_bruit_poivre_sel = imnoise(image_originale, 'salt & pepper', 0.05); % 0.05 est la densité du bruit, vous pouvez ajuster si nécessaire

% Ajouter un bruit gaussien
image_bruit_gaussien = imnoise(image_originale, 'gaussian', 0, 0.01); % 0.01 est l'écart-type du bruit, vous pouvez ajuster si nécessaire

% Afficher chaque image dans sa propre figure
figure;
imshow(image_originale);
title('Image Originale');

figure;
imshow(image_bruit_poivre_sel);
title('Bruit Poivre et Sel');

figure;
imshow(image_bruit_gaussien);
title('Bruit Gaussien');


% Filtre passe-bas
h = fspecial('average', [3 3]); % Définition du kernel (fenetre ) du filtre passe-bas 
% (fenetre 3x3)
image_filtree_pass_bas_poivre_sel = imfilter(image_bruit_poivre_sel, h);
image_filtree_pass_bas_gaussien = imfilter(image_bruit_gaussien, h);


% Filtre médian
image_filtree_median_poivre_sel = medfilt2(image_bruit_poivre_sel, [3 3]);
% Taille de la fenêtre du filtre médian (ici 3x3)
image_filtree_median_gaussien = medfilt2(image_bruit_gaussien, [3 3]);


% Affichage des images filtrées
figure;
subplot(1,2,1);
imshow(image_filtree_pass_bas_poivre_sel);
title('Filtrage Passe-bas');
subplot(1,2,2);
imshow(image_filtree_median_poivre_sel);
title('Filtrage Médian');

% Add a title above the subplots
annotation('textbox', [0.1, 0.9, 0.8, 0.1], 'String', 'Bruit Poivre et Sel', 'HorizontalAlignment', 'center', 'FontSize', 12, 'FontWeight', 'bold');


figure;
subplot(1,2,1);
imshow(image_filtree_pass_bas_gaussien);
title('Filtrage Passe-bas');
subplot(1,2,2);
imshow(image_filtree_median_gaussien);
title('Filtrage Médian');


% Add a title above the subplots
annotation('textbox', [0.1, 0.9, 0.8, 0.1], 'String', 'Bruit Gaussien', 'HorizontalAlignment', 'center', 'FontSize', 12, 'FontWeight', 'bold');
