function [ score ] = evaluate ( testRef, predRef )
	
    score = 0;
    
    num = size(testRef, 1);

    %%% Doplòtì kód pro výpoèet úspìšnosti (Accuracy) klasifikace [%] %%%
	
    numCorrect = sum(testRef == predRef);
    
    score = 100 * numCorrect / num;
    
    %%% --- %%%
    
end