function [ score ] = evaluate ( testRef, predRef )
	
    score = 0;
    
    num = size(testRef, 1);

    %%% Dopl�t� k�d pro v�po�et �sp�nosti (Accuracy) klasifikace [%] %%%
	
    numCorrect = sum(testRef == predRef);
    
    score = 100 * numCorrect / num;
    
    %%% --- %%%
    
end