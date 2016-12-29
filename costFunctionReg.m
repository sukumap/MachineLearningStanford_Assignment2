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


thetatransX=X*theta;
part1=-(y.*log(sigmoid(thetatransX)));
part2 = (ones(size(y))-y).*(log((ones(size(y)))-sigmoid(thetatransX)));
n= size(X,2);
thetasquared = theta.^2;
thetasquared(1) = 0; %Ignore theta 1 for cost function regularization
part3 = (sum(thetasquared))*(lambda/(2*m));
J = (sum((part1-part2))/m) + part3;


H= sigmoid(thetatransX);
Sub = H-y;
Delta = Sub.*X;

for j=1:n,
    if j==1,
        grad(j)=sum(Delta(:,j))/m;
    else
        grad(j)=(sum(Delta(:,j))/m) + ((lambda * theta(j))/m);
    end
end
% =============================================================

end
