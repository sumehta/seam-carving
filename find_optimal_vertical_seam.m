function verticalSeam = find_optimal_vertical_seam(cumulativeEnergyMap)

[rows, columns] = size(cumulativeEnergyMap);

verticalSeam = zeros(rows,1);
[~, index] =  min(cumulativeEnergyMap(rows,:));
verticalSeam(rows) = index;

for i = rows-1:-1:1
    if index == columns
        [~,k] = min([cumulativeEnergyMap(i,columns-1), cumulativeEnergyMap(i,columns)]); 
    elseif index == 1
        [~,k] = min([cumulativeEnergyMap(i,1),cumulativeEnergyMap(i,2)]);
        k = k+1;
    else
        [~,k] =  min([cumulativeEnergyMap(i,verticalSeam(i+1)-1),cumulativeEnergyMap(i,verticalSeam(i+1)), cumulativeEnergyMap(i,verticalSeam(i+1)+1)]); 
    end
    if k == 3
        index = verticalSeam(i+1)+1;
    elseif k == 2
        index = verticalSeam(i+1);
    elseif k == 1 
       index = verticalSeam(i+1)-1;
    end
    verticalSeam(i)=index;
end

% for i = rows-1:-1:1
%    if verticalSeam(i+1) == 1
%       verticalSeam(i) = min([Cumulative_minimum_energy_map(i, 1), cumulativeEneryMap(i,2)]);
%    elseif verticalSeam(i+1) == columns
%        verticalSeam(i) = min([cumulativeEnergyMap(i,columns-1), cumulativeEnergyMap(i,columns)]);
%    else 
%       verticalSeam(i) = 
%        
% end
end