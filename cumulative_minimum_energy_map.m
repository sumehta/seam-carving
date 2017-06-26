function cumulativeEnergyMap = cumulative_minimum_energy_map(energyImage, seamDirection)

[rows, columns] = size(energyImage);

if strcmp(seamDirection,'VERTICAL')
    M = zeros(rows,columns);
    M(1,:) = energyImage(1,:);
    for i = 2: rows
        for j = 2: columns-1
            M(i,j) = energyImage(i,j) + min([M(i-1,j-1), M(i-1,j), M(i-1,j+1)]);
        end
        M(i,1) = energyImage(i,1) + min([M(i-1,1), M(i-1,2)]);
        M(i,columns) = energyImage(i,columns) + min([M(i-1,columns), M(i-1,columns-1)]);
    end

else
    M(:,1) = energyImage(:,1);
    for j = 2: columns
        for i = 2: rows-1   
            M(i,j) = energyImage(i,j) + min([M(i-1,j-1), M(i,j-1), M(i+1,j-1)]);
        end
        M(1,j) = energyImage(1,j) + min([M(1,j-1), M(2,j-1)]);
        M(rows,j) = energyImage(rows,j) + min([M(rows-1,j-1), M(rows,j-1)]);
     end
end

cumulativeEnergyMap = M;    
%imshow(cumulativeEnergyMap);
end