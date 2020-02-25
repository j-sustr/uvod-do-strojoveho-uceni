%% USU - cvi�en� 12 - pravd�podobnostn� klasifikace
clear *; close all; clc;

%% na�ten� tr�novac�ch a testovac�ch dat
load('data/data.mat');
draw(trainData, trainRef, testData, testRef);

%% pravd�podobnostn� klasifikace na z�klad� diagon�ln� kovarian�n� matice (p��znaky jsou nez�visl�)
predRef = getPredictionsFullCov(trainData, trainRef, testData);
fprintf('Accuracy:\t%.1f%%\tFullCov\n', evaluate(testRef, predRef));
draw(trainData, trainRef, testData, predRef);

%% pravd�podobnostn� klasifikace na z�klad� pln� kovarian�n� matice (p��znaky nejsou nez�visl�)
predRef = getPredictionsDiagCov(trainData, trainRef, testData);
fprintf('Accuracy:\t%.1f%%\tDiagCov\n', evaluate(testRef, predRef));
draw(trainData, trainRef, testData, predRef);
