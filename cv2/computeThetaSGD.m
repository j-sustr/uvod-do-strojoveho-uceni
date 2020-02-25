function [ theta ] = computeThetaSGD(X, y, alpha, nIter, order, lambda)

    % pøidání prvního sloupce odpovídajícímu theta0
    X = [ones(size(X, 1), 1), X];
    
    % výpoèet theta metodou SGD
    theta = zeros(order + 1, 1);

    %%% Doplòtì kód pro výpoèet parametrù theta %%%
    
    for iter = 1:nIter

        
    end

    %%% --- %%%

end