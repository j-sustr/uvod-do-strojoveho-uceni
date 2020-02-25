function [ y_pred ] = computePrediction( X, theta )

    % v�po�et odhadu v�stupu
    y_pred = zeros(size(X, 1), size(X, 2));   
    for k = 1:1:size(theta) 
       y_pred = y_pred + theta(k)*X.^(k-1);
    end

end

