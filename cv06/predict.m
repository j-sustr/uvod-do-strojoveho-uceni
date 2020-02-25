function p = predict(X, theta)

	% pridani prvniho sloupce
    X = [ones(size(X, 1), 1), X];
        
	% inicializace vystupu
	p = zeros(size(X, 1), 1) - 1;
	
	%%% doplnte kod, ktery na zaklade prahu p a kombinace vsstupu theta a X urci prislusnost k tride %%%
		
	p = sigmoid(X * theta);
	
end
