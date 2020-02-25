function [ dist ] = computeEuclidianDistance ( testItem, trainData )
    
    % dist = zeros(size(trainData, 1), 1);
    
    %%% Doplòtì kód pro výpoèet Euklidovské vzdálenosti %%%
    % Vzdálenost jednoho testovacího vzorku vùèi všem trénovacím datùm %

    
    dist = sqrt(sum((repmat(testItem, size(trainData, 1), 1) - trainData) .^2, 2));
    
end
