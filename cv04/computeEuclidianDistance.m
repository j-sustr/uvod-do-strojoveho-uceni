function [ dist ] = computeEuclidianDistance ( testItem, trainData )
    
    % dist = zeros(size(trainData, 1), 1);
    
    %%% Dopl�t� k�d pro v�po�et Euklidovsk� vzd�lenosti %%%
    % Vzd�lenost jednoho testovac�ho vzorku v��i v�em tr�novac�m dat�m %

    
    dist = sqrt(sum((repmat(testItem, size(trainData, 1), 1) - trainData) .^2, 2));
    
end
