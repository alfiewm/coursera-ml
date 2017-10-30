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

pos = find(y == 1); % 找到y中值为1的位置向量 X(pos, 1)即为对应位置的X第一列的值向量， X(pos, 2)即为对应位置第二列的值向量
neg = find(y == 0); % 找到y中值为0的位置向量

plot(X(pos, 1), X(pos, 2), 'k+', 'LineWidth', 2, 'MarkerSize', 7);
plot(X(neg, 1), X(neg, 2), 'ko', 'LineWidth', 2, 'MarkerSize', 7);





% =========================================================================



hold off;

end
