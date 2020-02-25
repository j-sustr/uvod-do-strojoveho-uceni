function [ predRef ] = getPredictionsDiagCov ( trainData, trainRef, testData )
    
    % % Vektor, kterı bude obsahovat spoèítané pøiøazení testovacích dat ke tøídám
	predRef = zeros(size(testData, 1), 1);
    
    %%% Doplòtì kód pro pravdìpodobností klasifikaci pomocí diagonální kovarianèní matice (pøíznaky jsou nezávislé) %%%
    
    [trainData1, trainData2] = splitData(trainData, trainRef);

    p = size(trainData1, 2);
    
    m1 = mean(trainData1, 1);
    c1 = diag(var(trainData1));
    ic1 = pinv(c1);
    k1 = log(1/sqrt((2*pi)^p * det(c1)));
    
    m2 = mean(trainData2, 1);
    c2 = diag(var(trainData2));
    ic2 = pinv(c2);
    k2 = log(1/sqrt((2*pi)^p * det(c2)));
    
    k1
    k2
    
    for i = 1:size(predRef, 1)
        a1 = testData(i, :) - m1;
        a2 = testData(i, :) - m2;
        
        pred1 = k1 - 0.5 * a1 * ic1 * a1';
        pred2 = k2 - 0.5 * a2 * ic2 * a2';
         
        if pred1 > pred2
            predRef(i) = 1;
        else
            predRef(i) = 2;
        end
    end
    
    
end
