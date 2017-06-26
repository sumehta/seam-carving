function energyImage =  energy_image(img)
gray = rgb2gray(img);
filterx = [-1,1];
filtery = [-1;1];
filter3 = [0 -1/2 0 1/2 0];
f = fspecial('sobel');
gradientx = double(imfilter(gray, filterx, 'conv', 'replicate'));
gradienty = double(imfilter(gray, filtery, 'conv', 'replicate'));
energyImage = sqrt(gradientx.^2 + gradienty.^2);
end




