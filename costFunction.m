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
thetatransX=X*theta;
part1=-(y.*log(sigmoid(thetatransX)));
part2 = (ones(size(y))-y).*(log((ones(size(y)))-sigmoid(thetatransX)));
J=sum((part1-part2))/m;


H= sigmoid(thetatransX);
Sub = H-y;
Delta = Sub.*X;
%disp (Delta);
%disp(size(Delta));
Delta1 = Delta(:,1);
Delta2=Delta(:,2);
Delta3=Delta(:,3);

%disp(sum(Delta1)/m);
%theta(1) = theta(1) - ((sum(Delta1)/m)*alpha);
%theta(2) = theta(2) - ((sum(Delta2)/m))*alpha;
grad(1)=sum(Delta1)/m;
grad(2)=sum(Delta2)/m;
grad(3)=sum(Delta3)/m;

% =============================================================

end
