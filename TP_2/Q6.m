% Charger l'image 'cameraman' predfined in matlab 
cameraman = imread('cameraman.tif');
% idk why  tif works and jpg and png dont but if it works dont touch it

% Calculer la transformée de Fourier
TF_cameraman = fft2(double(cameraman));

% Calculer l'image module et l'image argument
module_cameraman = abs(TF_cameraman);
argument_cameraman = angle(TF_cameraman);

% Afficher l'image originale
figure;
imshow(cameraman);
title('Image Originale (Cameraman)');

% Afficher l'image module
figure;
imshow(log(1 + module_cameraman), []);
title('Module de TF (Cameraman)');

% Afficher l'image argument
figure;
imshow(argument_cameraman, []);
title('Argument de TF (Cameraman)');