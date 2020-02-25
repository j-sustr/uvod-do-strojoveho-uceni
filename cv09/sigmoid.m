function g = sigmoid(z)
    
    %%%   Dopl�te k�d implementuj�c� sigmoidu   %%%
    %   z  ... vstupn� matice                     %
    %   g  ... v�stupn� matice                    %
    %%%                                         %%%
    
	g = zeros(size(z));

    g = 1.0 ./ (1.0 + exp(-z));

end
