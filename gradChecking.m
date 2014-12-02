function [grad] = gradChecking(theta, epsilon)
%GRADCHECKING Calculate an approximation of the derivative of J(theta) using
%Gradient Checking

ThetaPlus = theta + epsilon;
ThetaMinus = theta - epsilon;

format long;
grad = (3 * (ThetaPlus^4) + 4 - 3 * (ThetaMinus^4) - 4) / 2 / epsilon;

end
