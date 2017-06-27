function [reducedColorImage,reducedEnergyImage] = reduceWidth(im, energyImage)

cmem = cumulative_minimum_energy_map(energyImage, 'VERTICAL');
vs = find_optimal_vertical_seam(cmem);

[rows,columns] = size(energyImage);

reducedColorImage = zeros(rows, columns-1, 3);

for i = 1:rows
   
    reducedColorImage(i, 1:vs(i)-1,:) = im(i,1:vs(i)-1,:);
    reducedColorImage(i,vs(i):columns-1,:) = im(i,vs(i)+1:columns,:);
end
reducedColorImage = uint8(reducedColorImage);
reducedEnergyImage = energy_image(reducedColorImage);
end