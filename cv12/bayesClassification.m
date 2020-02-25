%% USU - cvièení 12 - pravdìpodobnostní klasifikace
clear *; close all; clc;

%% naètení trénovacích a testovacích dat
load('data/data.mat');
draw(trainData, trainRef, testData, testRef);

%% pravdìpodobnostní klasifikace na základì diagonální kovarianèní matice (pøíznaky jsou nezávislé)
predRef = getPredictionsFullCov(trainData, trainRef, testData);
fprintf('Accuracy:\t%.1f%%\tFullCov\n', evaluate(testRef, predRef));
draw(trainData, trainRef, testData, predRef);

%% pravdìpodobnostní klasifikace na základì plné kovarianèní matice (pøíznaky nejsou nezávislé)
predRef = getPredictionsDiagCov(trainData, trainRef, testData);
fprintf('Accuracy:\t%.1f%%\tDiagCov\n', evaluate(testRef, predRef));
draw(trainData, trainRef, testData, predRef);
