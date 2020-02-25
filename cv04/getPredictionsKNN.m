function [ predRef ] = getPredictionsKNN ( trainData, trainRef, testData, k )
    
    % Vektor, který bude obsahovat spoèítané pøiøazení testovacích dat ke tøídám
	predRef = zeros(size(testData, 1), 1);
    
    %trainData_size1 = size(trainData, 1)
	
    %%% Doplòtì kód pro klasifikaci testovacích dat pomocí metody (k)NN %%%
     
    for iter = 1:size(testData, 1)
            
        testItem = testData(iter, :);
        
        sorted_dists_with_labels  = sortrows([computeEuclidianDistance(testItem, trainData), trainRef]);
        
        knn_dists_with_labels = sorted_dists_with_labels(1:k, :);       
        predRef(iter) = mode(knn_dists_with_labels(:, 2));
        
    end

end