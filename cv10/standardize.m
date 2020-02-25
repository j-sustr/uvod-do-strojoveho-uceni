function result = standardize(x)
    x_size1 = size(x, 1);
    mean_x_dim1 = mean(x, 1);
    std_x_dim1 = std(x, 1)
    result = (x - repmat(mean_x_dim1, x_size1, 1)) ./ repmat(std_x_dim1, x_size1, 1);
end