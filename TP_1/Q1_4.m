% question 1, 2, 3, 4

% Lire l'image en couleur
image_A = imread('burger.png');

% Afficher l'image
imshow(image_A);

% Getting the dimensions of the loaded image using size function that
% returns an array 
[rows, cols, numberOfColorChannels] = size(image_A);

% Display the dimensions of the image
disp(['Dimensions of the image: ', num2str(cols), 'x', num2str(rows), ' pixels']);
disp(['Number of color channels: ', num2str(numberOfColorChannels)]);

% 3 channels = red , green , blue 
%%%%%%

% Sauvegarder l'image au format JPG
imwrite(image_A, 'burger.jpg');

% Sauvegarder l'image au format TIFF
imwrite(image_A, 'burger.tiff');


