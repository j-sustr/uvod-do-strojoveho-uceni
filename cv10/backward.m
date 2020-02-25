function [w1, w2] = backward(w1, w2, X, y, alpha, lambda)
    
    %%%   Doplòte kód pro dopøedný prùchod NN   %%%
    %   w1 ... váhy neuronù pro vstupní vrstvu    %
    %   w2 ... váhy neuronù pro skrytou vrstvu    %
    %   X  ... vstupní data                       %
    %   y  ... pøíslušností dat (X) ke tøídám     %
    %   výstupem jsou nové hodnoty vah w1 a w2    %
    %%% 
    %%%
    
    X = [ones(size(X, 1), 1), X];
    y_onehot = full(ind2vec(y',10))';
    
    for i = size(X, 1)     
        u1 = X(i, :) * w1';
        a1 = relu(u1);
        a1 = [1, a1];
        u2 = a1 * w2';
        y_pred = softmax(u2);
        
        % -----
        
        dy = y_pred - y_onehot(i, :);
        
        dw2 = dy' * a1;
        
        da1 = (w2' * dy')';
        
        du = u1 > 0
    end 
    
       
    
    %-------------

    
    
    %dw = zeros([size(dy, 1), size(dy, 2), size(a1, 2)]);
    %for i = size(dy, 1)
    %    dw(i, :, :) = dy(1, :)' * a1(1, :);
    %end
    
    %dw2 = dy * a2';
    
    
    
    

end
