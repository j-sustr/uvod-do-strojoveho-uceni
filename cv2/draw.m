function [ ] = draw ( X, y, theta )
    
    % vykreslení dat do grafu
    figure
    scatter(X(:,1), y(:,1), 40, 'r', 'x');
    title('Výsledky zkoušky');
    xlabel('doba studia [hod]');
    ylabel('výsledek [body]');
    xlim([round(min(X(:,1))) round(max(X(:,1)))]);
    ylim([round(min(y(:,1))) round(max(y(:,1)))])
    
    % vykreslení regresní køivky
    if nargin == 3
        hold on;
        N = 250;
        X = linspace(round(min(X(:,1))), round(max(X(:,1))), N)';
        y_pred = computePrediction(X, theta);
        plot(X(:,1), y_pred(:,1), 'b');
        hold off;
    end

end
