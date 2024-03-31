% Charger l'image 'trui'
trui = imread('trui.png');

% Calculer la transformée de Fourier
TF_trui = fft2(double(trui));

% Calculer l'image module et l'image argument
module_trui = abs(TF_trui);
argument_trui = angle(TF_trui);

% Afficher l'image originale
figure;
imshow(trui);
title('Image Originale (Trui)');

% Afficher l'image module (avec ajout d'une petite constante)
figure;
imshow(log(1 + module_trui), []);
title('Module de TF (Trui)');

% Afficher l'image argument
figure;
imshow(argument_trui, []);
title('Argument de TF (Trui)');