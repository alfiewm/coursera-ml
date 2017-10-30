function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

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
%
% Note: grad should have the same dimensions as theta
%

for mIndex = 1:m
  ht = sigmoid(X(mIndex,:)*theta);
  J = J - y(mIndex)*log(ht) - (1 - y(mIndex))*log(1-ht);
end;

J = J/m;

for gIndex = 1:length(grad)
  gradOne = 0;
  for mIndex = 1:m
    ht = sigmoid(X(mIndex,:)*theta);
    gradOne = gradOne + (ht - y(mIndex))*X(mIndex, gIndex);
  end;
  grad(gIndex) = gradOne/m;
end;



% =============================================================

end
