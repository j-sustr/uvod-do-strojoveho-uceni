%% USU - cvi�en� 4 - vzd�lenostn� klasifik�tory
clear *; close all; clc;

%% na�ten� tr�novac�ch a testovac�ch dat
load('data/data.mat');
draw(trainData, trainRef, testData, testRef);

testItem = testData(1, :);

%% klasifikace na z�klad� NN
k = 1;
predRef = getPredictionsKNN(trainData, trainRef, testData, k);
fprintf('Accuracy:\t%.1f%%\tkNN(%d)\n', evaluate(testRef, predRef), k);
draw(trainData, trainRef, testData, predRef);

%% klasifikace na z�klad� kNN
k = 5;
predRef = getPredictionsKNN(trainData, trainRef, testData, k);
fprintf('Accuracy:\t%.1f%%\tkNN(%d)\n', evaluate(testRef, predRef), k);
draw(trainData, trainRef, testData, predRef);

%% klasifikace na z�klad� etalon�
predRef = getPredictionsEtalons(trainData, trainRef, testData);
fprintf('Accuracy:\t%.1f%%\tetalony\n', evaluate(testRef, predRef));
draw(trainData, trainRef, testData, predRef);
