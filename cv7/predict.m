function ind = predict(X, theta)

    % pridani prvniho sloupce
    X = [ones(size(X, 1), 1), X];
    
    % inicializace vystupu
    ind = zeros(size(X, 1), 1);
    
    %%% doplnte kod, ktery pro kazdy vstup vrati prislusnou viteznou tridu %%%
    
    u = X * theta;
    
    y_predict = zeros(size(u));
        
    for iter2 = 1:size(y_predict, 1)
        y_predict(iter2, :) = softmax(u(iter2, :));
    end
    
    % size(y_predict)
    
    [~, ind] = max(y_predict, [], 2);
    
end
