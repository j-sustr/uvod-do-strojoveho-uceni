function [pred, y] = forward(w1, w2, X)

    %%%   Doplòte kód pro dopøedný prùchod NN   %%%
    %   w1 ... váhy neuronù pro vstupní vrstvu    %
    %   w2 ... váhy neuronù pro skrytou vrstvu    %
    %   X  ... vstupní data                       %
    %   y  ... výstupní vektor po softmax funkci  %
    %   pred ... výstupní vektor pro každý vstup  %
    %      predikující pøíslušnost ke tøídì       %
    %   aktivaèní funkce ... sigmoida             %
    %   nezapomeòte na bias (první sloupec)       %
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
