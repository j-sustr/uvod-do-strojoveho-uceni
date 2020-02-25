function [ theta ] = computeThetaSGD(X, y, alpha, num_iters)

	% pridani prvniho sloupce
	X = [ones(size(X, 1), 1), X];
    
    % inicializace theta
	nClasses = length(unique(y));
	theta = zeros(size(X, 2), nClasses);
    
    y_onehot = full(ind2vec(y')');

    
	%%% doplnte kod implementujici SGD %%%
    
    u = zeros(size(X, 1), size(theta, 2));
    
    y_predict = zeros(size(u));
   
    
	for iter = 1:num_iters
        
        u = X * theta;
        
        for iter2 = 1:size(y_predict, 1)
            y_predict(iter2, :) = softmax(u(iter2, :));
        end
        
        % size(X' *(y_predict - y_onehot))
        
        theta = theta - alpha * X' * (y_predict - y_onehot);
        
    end
    
    
end
