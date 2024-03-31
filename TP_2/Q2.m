
% Lire une image en niveaux de gris
image = imread('image.jpg');
if size(image, 3) == 3
    image = rgb2gray(image);
end

% Ajouter un bruit de type poivre et sel
image_bruit_poivre_sel = imnoise(image, 'salt & pepper', 0.05); 
% 0.05 est la densité du bruit, a ajuster 


% Ajouter un bruit gaussien
image_bruit_gaussien = imnoise(image, 'gaussian', 0, 0.01); 
% 0.01 est l'écart-type du bruit. 


% Afficher chaque image dans sa propre figure
figure;
imshow(image);
title('Image Originale');

figure;
imshow(image_bruit_poivre_sel);
title('Bruit Poivre et Sel');

figure;
imshow(image_bruit_gaussien);
title('Bruit Gaussien');