function [ ] = draw( X, y, theta )
    
    % základní graf
    figure
    hold on;
    title('svm');
    xlabel('pøíznak x1');
    ylabel('pøíznak x2');
    nClasses = length(unique(y));
    colors = ['g', 'b', 'r', 'y', 'c', 'm', 'k'];
    colorsMap = [0.9 1 0.9; 0.9 0.9 1; 1 0.9 0.9; 1 1 0.9; 0.9 1 1; 1 0.9 1; 0.9 0.9 0.9];
    from = -5;
    to = 5;
    count = 250;
    axis([from to from to]);
    hold off;
        
    % vykreslení oblastí
    if nargin == 3
        hold on;
        
        % rozsah sítì
        u = linspace(from, to, count);
        v = linspace(from, to, count);
        z = zeros(length(u), length(v), nClasses);
        
        % z = theta*x pro celou sí
        for i = 1:length(u)
            for j = 1:length(v)      
                z(i,j,:) = [1, u(i), v(j)] * theta;
            end
        end
        [~, ind] = max(z, [], 3);
        for k = 1:nClasses
            contourf(u, v, ind', [k, k], colors(k));
        end
        
        caxis([1 nClasses])
        colormap(colorsMap(1:nClasses, :));
        
        hold off;
    end
    
    % vykreslení bodù
    hold on;
    for k = 1:nClasses
        yy = find(y == k);
        plot(X(yy, 1), X(yy, 2), 'ko', 'MarkerFaceColor', colors(k), 'MarkerSize', 5.5);
    end
    hold off;

    % vykreslení regresní køivky
    if nargin == 3
        hold on;
              
        % rozsah sítì
        u = linspace(from, to, count);
        v = linspace(from, to, count);
        z = zeros(length(u), length(v));
        
        for k = 1:nClasses
            % z = theta*x pro celou sí
            for i = 1:length(u)
                for j = 1:length(v)
                    z(i,j) = [1, u(i), v(j)] * theta(:,k);
                end
            end

            % vykresli z = 0
            contour(u, v, z', [0, 0], 'k');
        end
        hold off;
    end

end
