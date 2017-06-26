img1 = imread('inputSeamCarvingPrague.jpg');
ei1 = energy_image(img1);
for i = 1:100
   [img1, ei1] = reduceWidth(img1,ei1);
end

% imshow(img1);
size(img1)
imwrite(img1,'outputReduceWidthPrague.png', 'PNG');

img2 = imread('inputSeamCarvingMall.jpg');
ei2 = energy_image(img2);
for i = 1:100
   [img2, ei2] = reduceWidth(img2,ei2);
end

% imshow(img2);
size(img2)
imwrite(img2,'outputReduceWidthMall.png', 'PNG');