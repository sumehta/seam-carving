function [reducedColorImage,reducedEnergyImage] = reduceHeight(im, energyImage)


cmem = cumulative_minimum_energy_map(energyImage, 'HORIZONTAL');
hs = find_optimal_horizontal_seam(cmem);

[rows,columns] = size(energyImage);

reducedColorImage = zeros(rows-1, columns, 3);

for i = 1:columns
    reducedColorImage(1:hs(i)-1,i,:) = im(1:hs(i)-1,i,:);
    reducedColorImage(hs(i):rows-1,i,:) = im(hs(i)+1:rows,i,:);  
end
 reducedColorImage = uint8(reducedColorImage);
 
 reducedEnergyImage = energy_image(reducedColorImage);

end