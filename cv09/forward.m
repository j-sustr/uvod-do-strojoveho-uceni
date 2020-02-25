function [pred, y] = forward(w1, w2, X)

    %%%   Dopl�te k�d pro dop�edn� pr�chod NN   %%%
    %   w1 ... v�hy neuron� pro vstupn� vrstvu    %
    %   w2 ... v�hy neuron� pro skrytou vrstvu    %
    %   X  ... vstupn� data                       %
    %   y  ... v�stupn� vektor po softmax funkci  %
    %   pred ... v�stupn� vektor pro ka�d� vstup  %
    %      predikuj�c� p��slu�nost ke t��d�       %
    %   aktiva�n� funkce ... sigmoida             %
    %   nezapome�te na bias (prvn� sloupec)       %
    %%%                                         %%%
    
    % y = zeros(size(X, 1), 1);

    %%% -------------------------------
    
    X = [ones(size(X, 1), 1), X];
    
    a1 = sigmoid(X * w1');
    
    a1 = [zeros(size(a1, 1), 1), a1];
    
    a2 = sigmoid(a1 * w2');
    
    y = softmax(a2);
    
    [~, pred] = max(y, [], 2);

end
