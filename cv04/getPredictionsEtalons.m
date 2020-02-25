function [ predRef ] = getPredictionsEtalons ( trainData, trainRef, testData )
    
    % Vektor, který bude obsahovat spoèítané pøiøazení testovacích dat ke tøídám
	predRef = zeros(size(testData, 1), 1);
    
    %%% Doplòtì kód pro klasifikaci testovacích dat pomocí metody výpoètu etalonù %%%
    
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
