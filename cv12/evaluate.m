function [ score ] = evaluate ( testRef, predRef )
	
    % výpoèet procentuální úspìšnosti klasifikace
	score = (sum(testRef == predRef)) / size(testRef, 1) * 100;
    
end
