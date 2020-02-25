%% USU - cvi�en� 7 - softmax regrese
clear *; close all; clc;

%% na�ten� a zobrazen� dat
load('data/sr.mat');
draw(X, y);

%% nastaven� parametr�
alpha = 0.01;
iterations = 1000;

%% v�po�et parametr� theta metodou SGD + zobrazen�
theta = computeThetaSGD(X, y, alpha, iterations);
draw(X, y, theta);

%% test
XX = [-1 3; -1 -3; 1 3; 1 -3];
predict(XX, theta)