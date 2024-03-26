% question : memory space

% Charger l'image
image = imread('burger.png');

% File path to the image
imageFilePath = 'burger.jpg';
imageFilePath2 = 'burger.tiff';

% Get information about the file
fileInfo = dir(imageFilePath);
fileInfo2 = dir(imageFilePath2);
% Display the file size
fprintf('File size JPG %s is %.2f megabytes.\n', imageFilePath, fileInfo.bytes / (1024^2));
fprintf('File size TIFF %s is %.2f megabytes.\n', imageFilePath2, fileInfo2.bytes / (1024^2));