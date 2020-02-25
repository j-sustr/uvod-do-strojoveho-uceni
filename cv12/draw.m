function [ ] = draw( trainData, trainRef, testData, testRef )
    
    % základní graf
    figure
    hold on;
    title('data');
    xlabel('x1');
    ylabel('x2');
    nClasses = length(unique(trainRef));
    colors = ['y', 'b', 'r', 'g', 'c', 'm', 'k', 'w'];
    
    % vykreslení bodù + etalonu
    hold on;
    for k = 1:nClasses
        plot(trainData(trainRef == k, 1), trainData(trainRef == k, 2), 'ko', 'MarkerFaceColor', colors(k), 'MarkerSize', 5.5); 
        plot(testData(testRef == k, 1), testData(testRef == k, 2), 'ko', 'MarkerFaceColor', colors(k+nClasses), 'MarkerSize', 5.5);
    end
    hold off;
    
end
