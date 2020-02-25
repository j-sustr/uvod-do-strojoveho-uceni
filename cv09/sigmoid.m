function g = sigmoid(z)
    
    %%%   Doplòte kód implementující sigmoidu   %%%
    %   z  ... vstupní matice                     %
    %   g  ... výstupní matice                    %
    %%%                                         %%%
    
	g = zeros(size(z));

    g = 1.0 ./ (1.0 + exp(-z));

end
