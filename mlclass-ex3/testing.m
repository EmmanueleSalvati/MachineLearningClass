%% testing script for the cost functions

clear; close all; clc

addpath('../mlclass-ex2');

fprintf('Loading Data ... \n')
load('ex3data1.mat');

m = size(X, 1);
rand_indices = randperm(m);
sel = X(rand_indices(1:100), :);
y_sel = y(rand_indices(1:100), :);

lambda = 0.1;
theta = zeros(size(sel, 2), 1);

[J, grad] = lrCostFunction(theta, sel, y_sel, lambda);

[J_loop, grad_loop] = costFunctionReg(theta, sel, y_sel, lambda);