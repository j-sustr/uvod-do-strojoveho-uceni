%% USU - cvièení 6 - logistická regrese
clear *; close all; clc;

%% naètení a zobrazení dat
load('data/lr.mat');
draw(X, y);

%% nastavení parametrù
lambda = 0.2;
alpha = 0.001;
iterations = 10000;

%% výpoèet parametrù theta metodou SGD + zobrazení
theta = computeThetaSGD(X, y, alpha, iterations, lambda);
draw(X, y, theta);

%% odhad o pøijetí
predict([8, 4], theta)