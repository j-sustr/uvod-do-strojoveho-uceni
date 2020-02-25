%% USU - cvièení 9 - DNN - dopøedný prùchod (volnì vychází z https://www.coursera.org/learn/machine-learning)
clear *; close all; clc;

%% parametry DNN
inputLayerSize = 400;   % rozmìr vstupních obrázkù - 20x20 pixelù
hiddenLayerSize = 25;   % 25 neuronù ve skryté vrstvì
outputLabels = 10;      % 0-9, 0 mapována na 10

%% naètení a zobrazení dat
load('data/data.mat');

% zobrazí 100 náhodných èíslic z trénovavích dat
sel = randperm(size(X, 1));
displayData(X(sel(1:100), :));

%% naètení vah pøedtrénované sítì
load('data/weights.mat');

%% klasifikace 
% ovìøení - pøesnost 97.52%
pred = forward(w1, w2, X);
fprintf('\nPøesnost na trénovací množinì: %.2f%%\n', mean(double(pred == y)) * 100);

%% klasifikace konkrétních vzorkù
rp = randperm(size(y, 1));

for i = 1:10
    displayData(X(rp(i), :));
    pred = forward(w1, w2, X(rp(i),:));
    fprintf('\nPredikce neuronové sítì: %d (skuteèná pøíslušnost: %d)', mod(pred, 10), mod(y(rp(i), :), 10));
    
    pause;
end
fprintf('\n\n')
