function y = softmax(u)
	
    % y = zeros(size(u));
    
    %%% doplnte kod implementujici funkci softmax %%%
    
    % den = sum(exp_u);
    
    exp_u = exp(u);
    
    y = exp_u ./ sum(exp_u);
    
end
