%% USU - cvi�en� 6 - logistick� regrese
clear *; close all; clc;

%% na�ten� a zobrazen� dat
load('data/lr.mat');
draw(X, y);

%% nastaven� parametr�
lambda = 0.2;
alpha = 0.001;
iterations = 10000;

%% v�po�et parametr� theta metodou SGD + zobrazen�
theta = computeThetaSGD(X, y, alpha, iterations, lambda);
draw(X, y, theta);

%% odhad o p�ijet�
predict([8, 4], theta)