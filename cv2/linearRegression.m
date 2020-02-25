%% USU - cvi�en� 2, 3 - line�rn� regrese
clear *; close all; clc;

%% na�ten� a zobrazen� dat
load('data/lr.mat');
draw(X, y);

%% nastaven� parametr� - LSE (cvi�en� 2)
order = 1;
lambda = 1;

%% v�po�et parametr� theta metodou LSE + zobrazen�

theta = computeThetaLSE(X, y, order, lambda);
draw(X, y, theta);

% res = theta' * [1 4]';

%% 2. ur�ete zisk bod� v p��pad� p��pravy v d�lce 4 hodin,

res = theta' * [1 4]';
fprintf('f(4) = %f', res);

%% ur�ete dobu studia v p��pad� zisku 12 bod�,

res = (12 - theta(1)) / theta(2)
fprintf('f^-1(12) = %f', res);


%% ur�ete p�edpokl�dan� zisk bod� v p��pad� p��pravy v d�lce 4 hodin, ��du polynomu 2 a ? 1.

theta1 = computeThetaLSE(X, y, 2, 1);
draw(X, y, theta1)


%% nastaven� parametr� - SGD (cvi�en� 3)
order = 3;
lambda = 0;
alpha = 0.00001;
iterations = 15000;

%% v�po�et parametr� theta metodou SGD + zobrazen�
theta = computeThetaSGD(X, y, alpha, iterations, order, lambda);
%draw(X, y, theta)
