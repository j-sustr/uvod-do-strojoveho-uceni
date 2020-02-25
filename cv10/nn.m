%% USU - cvi�en� 10, 11 - DNN - zp�tn� pr�chod (voln� vych�z� z https://www.coursera.org/learn/machine-learning)
clear *; close all; clc;

%% parametry DNN
inputLayerSize = 400;   % rozm�r vstupn�ch obr�zk� - 20x20 pixel�
hiddenLayerSize = 25;   % 25 neuron� ve skryt� vrstv�
outputLabels = 10;      % 0-9, 0 mapov�na na 10

%% na�ten� a zobrazen� dat
load('data/data.mat');

% X = standardize(X);

% zobraz� 100 n�hodn�ch ��slic z tr�novav�ch dat
sel = randperm(size(X, 1));
displayData(X(sel(1:100), :));

%% n�hodn� inicializace vah mal�mi ��sly
nIter = 100;
w1 = initializeWeights(inputLayerSize, hiddenLayerSize);
w2 = initializeWeights(hiddenLayerSize, outputLabels);
alpha = 0;
lambda = 0;

for iter = 1:nIter 
    [w1, w2] = backward(w1, w2, X, y, alpha, lambda);
    pred = forward(w1, w2, XTest);
    fprintf('\nP�esnost na testovac� mno�in�: %.2f%%', mean(double(pred == yTest)) * 100);
end
fprintf('\n');

%%






