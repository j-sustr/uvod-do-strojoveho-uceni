%% USU - cvièení 4 - vzdálenostní klasifikátory
clear *; close all; clc;

%% naètení trénovacích a testovacích dat
load('data/data.mat');
draw(trainData, trainRef, testData, testRef);

testItem = testData(1, :);

%% klasifikace na základì NN
k = 1;
predRef = getPredictionsKNN(trainData, trainRef, testData, k);
fprintf('Accuracy:\t%.1f%%\tkNN(%d)\n', evaluate(testRef, predRef), k);
draw(trainData, trainRef, testData, predRef);

%% klasifikace na základì kNN
k = 5;
predRef = getPredictionsKNN(trainData, trainRef, testData, k);
fprintf('Accuracy:\t%.1f%%\tkNN(%d)\n', evaluate(testRef, predRef), k);
draw(trainData, trainRef, testData, predRef);

%% klasifikace na základì etalonù
predRef = getPredictionsEtalons(trainData, trainRef, testData);
fprintf('Accuracy:\t%.1f%%\tetalony\n', evaluate(testRef, predRef));
draw(trainData, trainRef, testData, predRef);
