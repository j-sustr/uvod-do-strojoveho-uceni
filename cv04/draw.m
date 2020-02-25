function [ ] = draw( trainData, trainRef, testData, testRef )
    
    % Základní graf
    figure
    hold on;
    title('data');
    xlabel('x1');
    ylabel('x2');
    nClasses = length(unique(trainRef));
    colors = ['y', 'b', 'r', 'g', 'c', 'm', 'k', 'w'];
    
    % Vykreslení bodù + etalonù
    hold on;
    for k = 1:nClasses
        plot(trainData(trainRef == k, 1), trainData(trainRef == k, 2), 'ko', 'MarkerFaceColor', colors(k), 'MarkerSize', 5.5);            
    end
    
    for k = 1:nClasses
        plot(testData(testRef == k, 1), testData(testRef == k, 2), 'ko', 'MarkerFaceColor', colors(k+nClasses), 'MarkerSize', 5.5);
        testMean = mean(testData(testRef == k, :));
        trainMean = mean(trainData(trainRef == k, :)); 
        plot(trainMean(:, 1), trainMean(:, 2), 'ko', 'MarkerFaceColor', colors(k+2*nClasses), 'MarkerSize', 5.5);
        plot(testMean(:, 1), testMean(:, 2), 'ko', 'MarkerFaceColor', colors(k+(3*nClasses)), 'MarkerSize', 5.5);
    end
    hold off;
    
end
