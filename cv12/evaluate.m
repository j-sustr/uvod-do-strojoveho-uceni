function [ score ] = evaluate ( testRef, predRef )
	
    % v�po�et procentu�ln� �sp�nosti klasifikace
	score = (sum(testRef == predRef)) / size(testRef, 1) * 100;
    
end
