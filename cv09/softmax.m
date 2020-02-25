function y = softmax(u)

    %%%   Doplòte kód implementující softmax    %%%
    %   u  ... vstupní matice                     %
    %   y  ... výstupní matice (øádkovì)          %
    %%%                                         %%%
    
	y = zeros(size(u));

    exp_u = exp(u);
    
    y = exp_u ./ sum(exp_u, 2);
    
end
