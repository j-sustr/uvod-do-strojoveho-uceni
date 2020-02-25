%% USU - cvièení 10, 11 - DNN - zpìtný prùchod (volnì vychází z https://www.coursera.org/learn/machine-learning)
clear *; close all; clc;

%% parametry DNN
inputLayerSize = 400;   % rozmìr vstupních obrázkù - 20x20 pixelù
hiddenLayerSize = 25;   % 25 neuronù ve skryté vrstvì
outputLabels = 10;      % 0-9, 0 mapována na 10

%% naètení a zobrazení dat
load('data/data.mat');

% X = standardize(X);

% zobrazí 100 náhodných èíslic z trénovavích dat
sel = randperm(size(X, 1));
displayData(X(sel(1:100), :));

%% náhodná inicializace vah malými èísly
nIter = 100;
w1 = initializeWeights(inputLayerSize, hiddenLayerSize);
w2 = initializeWeights(hiddenLayerSize, outputLabels);
alpha = 0;
lambda = 0;

for iter = 1:nIter 
    [w1, w2] = backward(w1, w2, X, y, alpha, lambda);
    pred = forward(w1, w2, XTest);
    fprintf('\nPøesnost na testovací množinì: %.2f%%', mean(double(pred == yTest)) * 100);
end
fprintf('\n');

%%






