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
z = X * theta;
nfeature =length(theta) ;
S = (X')*(sigmoid(z)-y);
J = (1/m)*(sum((-y).*log(sigmoid(z))-(1-y).*log(1-sigmoid(z))))+(1/(2*m))*lambda*sum(theta(2:nfeature).^2);
grad(1) = (1/m).*S(1) ;
grad(2:nfeature) = (1/m).*((S(2:nfeature)) + lambda * theta(2:nfeature));




% =============================================================

end
