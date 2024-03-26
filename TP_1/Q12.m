% Q12 - Convertir l’image RVB en HSV. Afficher les composantes H,S et V.
image = imread('burger.png');
imshow(image);

% nvm this 
info = imfinfo('burger.png');
imageFormat = info.ColorType;
disp(['The image format is: ', imageFormat]);


% Convertir l'image en HSV
hsvImage = rgb2hsv(image);

% Extraire les composantes H, S et V
H = hsvImage(:,:,1); % Composante 1 : H (teinte)
S = hsvImage(:,:,2); % Composante 2 : S (saturation)
V = hsvImage(:,:,3); % Composante 3 : V (valeur)

% Afficher les composantes H, S et V
subplot(1,3,1);
imshow(H);
title('Cmp H (Teinte)');

subplot(1,3,2);
imshow(S);
title('Cmp S (Saturation)');

subplot(1,3,3);
imshow(V);
title('Cmp V (Luminance)');
