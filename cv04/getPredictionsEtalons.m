function [ predRef ] = getPredictionsEtalons ( trainData, trainRef, testData )
    
    % Vektor, kter� bude obsahovat spo��tan� p�i�azen� testovac�ch dat ke t��d�m
	predRef = zeros(size(testData, 1), 1);
    
    %%% Dopl�t� k�d pro klasifikaci testovac�ch dat pomoc� metody v�po�tu etalon� %%%
    
    train_data_with_labels = [trainData, trainRef];
    
    label_set = unique(trainRef);
    
    etalons = zeros(size(label_set, 1), size(trainData, 2));
    
    for i = 1:size(label_set, 1)
        etalons(i, :) = mean(train_data_with_labels(train_data_with_labels(:,3)==label_set(i), [1 2]), 1);
    end
    
    
    for iter = 1:size(testData, 1)
     
        testItem = testData(iter, :);
        
        sorted_dists_with_labels  = sortrows([computeEuclidianDistance(testItem, etalons), label_set]);
        
        predRef(iter) = sorted_dists_with_labels(1, 2);
     
    end
    
end
