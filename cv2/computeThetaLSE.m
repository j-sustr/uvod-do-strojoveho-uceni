function [ theta ] = computeThetaLSE ( X, y, order, lambda )

    % p�id�n� prvn�ho sloupce odpov�daj�c�mu theta0
    X = [ones(size(X, 1), 1), X, zeros(size(X, 1), order - 1)];
    
    if order >= 2
        for i = 2:order
            X(:, i + 1) = X(:, 2).^i;
        end
    end
    
    % v�po�et theta metodou LSE
    % theta = zeros(order + 1, 1);
    
    %%% Dopl�t� k�d pro v�po�et parametr� theta %%%
    
    theta = pinv(X' * X + lambda * eye(1 + order)) * X' * y;
    
end