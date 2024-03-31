%something's wrong with this question bsh 3jzt i fix it 

% Charger l'image 'cameraman'
cameraman = imread('cameraman.tif');

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


% Charger l'image 'trui'
trui = imread('trui.tif');

% Calculer la transformée de Fourier
TF_trui = fft2(double(trui));

% Calculer l'image module et l'image argument
module_trui = abs(TF_trui);
argument_trui = angle(TF_trui);

% Afficher l'image originale
figure;
imshow(trui);
title('Image Originale (Trui)');

% Afficher l'image module
figure;
imshow(log(1 + module_trui), []);
title('Module de TF (Trui)');

% Afficher l'image argument
figure;
imshow(argument_trui, []);
title('Argument de TF (Trui)');

% Resize argument_trui to match the size of module_cameraman
argument_trui_resized = imresize(argument_trui, size(module_cameraman));

% Construct the third image with the module of TF of 'cameraman' and the argument of 'trui'
TF_troisieme_image = module_cameraman .* exp(1i * argument_trui_resized);

% Compute the inverse Fourier transform
troisieme_image = ifft2(TF_troisieme_image);

% Display the original image (cameraman)
figure;
imshow(cameraman);
title('Image Originale (Cameraman)');

% Display the third image
figure;
imshow(abs(troisieme_image), []);
title('Troisième Image');
