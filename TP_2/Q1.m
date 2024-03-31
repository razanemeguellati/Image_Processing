
% Lire une image en couleur
image_couleur = imread('image.jpg');
figure;
imshow(image_couleur);
title('Image en couleur');

% en niveaux de gris
image_gris = imread('image.jpg');
% if its a colored image we turn it into a gray one 
% cuz colored images have 3 channels 
if size(image_gris, 3) == 3
    image_gris = rgb2gray(image_gris);
end
figure;
imshow(image_gris_force);
title('Image en niveaux de gris');