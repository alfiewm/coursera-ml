function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

for mIndex = 1:m
  ht = sigmoid(X(mIndex,:)*theta);
  J = J - y(mIndex)*log(ht) - (1 - y(mIndex))*log(1-ht);
end;

J = J/m;
J = J + lambda / (2*m) * sum(theta([2:size(theta, 1)],:).^2);

j = 0;
for j = 1:length(grad)
  gradeOne = 0;
  for mIndex = 1:m
    ht = sigmoid(X(mIndex,:)*theta);
    gradeOne = gradeOne + (ht - y(mIndex))*X(mIndex, j);
  end;
  if j == 1
    grad(j) = gradeOne/m;
  else
    grad(j) = gradeOne/m + lambda/m*theta(j);
end;




% =============================================================

end
