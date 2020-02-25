function [ theta ] = computeThetaSGD(X, y, alpha, num_iters)

	% pridani prvniho sloupce
	X = [ones(size(X, 1), 1), X];
    
    % inicializace theta
	nClasses = length(unique(y));
	theta = zeros(size(X, 2), nClasses);
    
    delta = zeros(nClasses, 1)
    
	%%% doplnte kod implementujici SGD %%%
	
	for iter = 1:num_iters        
        for i = 1:size(X, 1)
            s = X(i, :) * theta;
            
            c_correct = y(i);
            s_correct = s(c_correct);
            
            for c = 1:nClasses
                if 1 + s(c) - s_correct;
                    delta(c) = 1;
                else 
                    delta(c) = 0;
                end
            end
           
            theta = theta - alpha * ()
        end
        
        
    end
    
   
end
