%% USU - cvi�en� 8 - svm
clear *; close all; clc;

%% na�ten� a zobrazen� dat
load('data/5d.mat');
%draw(X, y);

%% nastaven� parametr�
alpha = 0.0001;
iterations = 1 %100;

%% v�po�et parametr� theta + zobrazen�
theta = computeThetaSGD(X, y, alpha, iterations);
% draw(X, y, theta);
