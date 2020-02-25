function [ ] = draw( X, y, theta )
    
    % vykreslen� dat do grafu
    figure
    hold on
    title('V�sledky p�ij�mac�ho ��zen�');
    xlabel('Po�et bod� ze zkou�ky A');
    ylabel('Po�et bod� ze zkou�ky B');
    pos = find(y == 1); 
    neg = find(y == 0); 
    plot(X(pos, 1), X(pos, 2), 'k+', 'LineWidth', 2, 'MarkerSize', 6);
    plot(X(neg, 1), X(neg, 2), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 6);
    legend('P�ijat', 'Nep�ijat');
    hold off

    % vykreslen� regresn� k�ivky
    if nargin == 3
        hold on;
              
        % rozsah s�t�
        u = linspace(0, 10, 10);
        v = linspace(0, 10, 10);
        z = zeros(length(u), length(v));

        % z = theta*x pro celou s�
        for i = 1:length(u)
            for j = 1:length(v)
                z(i,j) = [1, u(i), v(j)] * theta;
            end
        end

        % vykresli z = 0
        contour(u, v, z', [0, 0], 'LineWidth', 1)
        axis([3, 10, 3, 10])
        hold off;
    end

end
