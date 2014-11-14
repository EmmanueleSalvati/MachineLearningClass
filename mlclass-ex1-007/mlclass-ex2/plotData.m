function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%




% I need to subset the data according to the value of y, first
pos = X( find(y == 1), :)
neg = X( find(y == 0), :)

plot (pos(:, 1), pos(:, 2), 'k+');
plot (neg(:, 1), neg(:, 2), 'yo');


% =========================================================================



hold off;

end
