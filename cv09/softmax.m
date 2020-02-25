function y = softmax(u)

    %%%   Dopl�te k�d implementuj�c� softmax    %%%
    %   u  ... vstupn� matice                     %
    %   y  ... v�stupn� matice (��dkov�)          %
    %%%                                         %%%
    
	y = zeros(size(u));

    exp_u = exp(u);
    
    y = exp_u ./ sum(exp_u, 2);
    
end
