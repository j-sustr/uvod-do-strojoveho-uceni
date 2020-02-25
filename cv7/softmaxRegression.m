%% USU - cvièení 7 - softmax regrese
clear *; close all; clc;

%% naètení a zobrazení dat
load('data/sr.mat');
draw(X, y);

%% nastavení parametrù
alpha = 0.01;
iterations = 1000;

%% výpoèet parametrù theta metodou SGD + zobrazení
theta = computeThetaSGD(X, y, alpha, iterations);
draw(X, y, theta);

%% test
XX = [-1 3; -1 -3; 1 3; 1 -3];
predict(XX, theta)