% Q5- Afficher leurs dimensions.
% Q6- Comparer les 3 formats.


% png
info = imfinfo('burger.png');
imageFormat = info.Format;
disp(['The image format is: ', imageFormat]);

image = imread('burger.png');
[rows, cols, numberOfColorChannels] = size(image);
disp(['png dimensions: ', num2str(rows), 'x', num2str(cols)]);


% jpg
info = imfinfo('burger.jpg');
imageFormat = info.Format;
disp(['The image format is: ', imageFormat]);

image = imread('burger.jpg');
imshow(image);
[rows, cols, numberOfColorChannels] = size(image);
disp(['jpg dimensions: ', num2str(rows), 'x', num2str(cols)]);


% Tiff
info = imfinfo('burger.tiff');
imageFormat = info.Format;
disp(['The image format is: ', imageFormat]);

image = imread('burger.tiff');
imshow(image);
[rows, cols, numberOfColorChannels] = size(image);
disp(['tiff dimensions: ', num2str(rows), 'x', num2str(cols)]);
