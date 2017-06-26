function horizontalSeam = find_optimal_horizontal_seam(cumulativeEnergyMap)
[rows, columns] = size(cumulativeEnergyMap);

horizontalSeam = zeros(1,columns);
[~, index] =  min(cumulativeEnergyMap(:,columns));
horizontalSeam(columns) = index;

% iterate from cols-1 to 1
for i = columns-1:-1:1
    if index == rows
        [~,k] = min([cumulativeEnergyMap(rows,i),cumulativeEnergyMap(rows-1,i)]); 
    elseif index == 1
        [~,k] = min([cumulativeEnergyMap(1,i),cumulativeEnergyMap(2,i)]); 
        k = k+1;
    else
        [~,k] =min([cumulativeEnergyMap(horizontalSeam(i+1),i),cumulativeEnergyMap(horizontalSeam(i+1)-1,i), cumulativeEnergyMap(horizontalSeam(i+1)+1,i)]);    
    end
    if k == 3
        index = horizontalSeam(i+1)+1;
    elseif k == 2
        index = horizontalSeam(i+1);
    elseif k == 1 
       index = horizontalSeam(i+1)-1;
    end
    horizontalSeam(i)=index;
    
end
end
