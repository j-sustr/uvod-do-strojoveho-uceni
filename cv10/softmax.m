function y = softmax(u)

	y = zeros(size(u));

    exp_u = exp(u);
    
    y = exp_u ./ sum(exp_u, 2);
    
end
