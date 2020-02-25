function [ predRef ] = getPredictionsDiagCov ( trainData, trainRef, testData )
    
    % % Vektor, kter� bude obsahovat spo��tan� p�i�azen� testovac�ch dat ke t��d�m
	predRef = zeros(size(testData, 1), 1);
    
    %%% Dopl�t� k�d pro pravd�podobnost� klasifikaci pomoc� diagon�ln� kovarian�n� matice (p��znaky jsou nez�visl�) %%%
    
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
