function g = sigmoid(z)

	% g = zeros(size(z));

	
	
    %%% doplnte kod implementujici funkci sigmoida %%%
    
	g = 1 ./ (1 + exp(-z));
	
end
