function [ theta ] = computeThetaSGD(X, y, alpha, num_iters, lambda)

	% pridani prvniho sloupce
	X = [ones(size(X, 1), 1), X];
    
    % inicializace theta
	theta = zeros(size(X, 2), 1);
	
	
	
	%%% doplnte kod implementujici SGD %%%
	
	for iter = 1:num_iters
        theta = theta * (1 - alpha * lambda) - alpha * X' * (sigmoid(X * theta) - y);
	end


end
