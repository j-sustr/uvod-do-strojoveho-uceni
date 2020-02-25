%% USU - cvièení 8 - svm
clear *; close all; clc;

%% naètení a zobrazení dat
load('data/5d.mat');
%draw(X, y);

%% nastavení parametrù
alpha = 0.0001;
iterations = 1 %100;

%% výpoèet parametrù theta + zobrazení
theta = computeThetaSGD(X, y, alpha, iterations);
% draw(X, y, theta);
