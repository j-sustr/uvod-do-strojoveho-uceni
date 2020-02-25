%% USU - cvi�en� 9 - DNN - dop�edn� pr�chod (voln� vych�z� z https://www.coursera.org/learn/machine-learning)
clear *; close all; clc;

%% parametry DNN
inputLayerSize = 400;   % rozm�r vstupn�ch obr�zk� - 20x20 pixel�
hiddenLayerSize = 25;   % 25 neuron� ve skryt� vrstv�
outputLabels = 10;      % 0-9, 0 mapov�na na 10

%% na�ten� a zobrazen� dat
load('data/data.mat');

% zobraz� 100 n�hodn�ch ��slic z tr�novav�ch dat
sel = randperm(size(X, 1));
displayData(X(sel(1:100), :));

%% na�ten� vah p�edtr�novan� s�t�
load('data/weights.mat');

%% klasifikace 
% ov��en� - p�esnost 97.52%
pred = forward(w1, w2, X);
fprintf('\nP�esnost na tr�novac� mno�in�: %.2f%%\n', mean(double(pred == y)) * 100);

%% klasifikace konkr�tn�ch vzork�
rp = randperm(size(y, 1));

for i = 1:10
    displayData(X(rp(i), :));
    pred = forward(w1, w2, X(rp(i),:));
    fprintf('\nPredikce neuronov� s�t�: %d (skute�n� p��slu�nost: %d)', mod(pred, 10), mod(y(rp(i), :), 10));
    
    pause;
end
fprintf('\n\n')
