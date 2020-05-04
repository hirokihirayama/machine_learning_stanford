function [J, grad] = linearRegCostFunction(X, y, theta, lambda)

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly
J = 0;
grad = zeros(size(theta));

% Regularised cost function.
J = sum((1/(2*m))*(((X*theta)-y).^2)) + ((lambda/(2*m)) * (theta(2:length(theta)))' * (theta(2:length(theta))));

%Assigning theta 1 as zero - hence, if j=0, parameter equation is nil.
thetazero = theta;
thetazero(1) = 0;

%Vectorised Implementation
grad = ((1/m) * (((X*theta)-y)'*X)) + (lambda/m * thetazero');

% =========================================================================

grad = grad(:);

end
