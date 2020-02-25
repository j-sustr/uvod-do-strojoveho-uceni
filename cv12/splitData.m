function [data1, data2] = splitData(data, ref)

    n1 = sum(ref == 1);
    n2 = sum(ref == 2);
    data1 = zeros(n1, size(data, 2));
    data2 = zeros(n2, size(data, 2));
    
    i1 = 1;
    i2 = 1;
    for i = 1:size(data, 1)
        if (ref(i) == 1)
            data1(i1, :) = data(i, :);
            i1 = i1 + 1;
        elseif (ref(i) == 2)
            data2(i2, :) = data(i, :);
            i2 = i2 + 1;
        end
    end
end