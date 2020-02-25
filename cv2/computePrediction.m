function [ y_pred ] = computePrediction( X, theta )

    % výpoèet odhadu výstupu
    y_pred = zeros(size(X, 1), size(X, 2));   
    for k = 1:1:size(theta) 
       y_pred = y_pred + theta(k)*X.^(k-1);
    end

end

