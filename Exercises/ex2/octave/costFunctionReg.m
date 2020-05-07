function [J, grad] = costFunctionReg(theta, X, y, lambda)
m = length(y); % number of training examples
J = 0;
grad = zeros(size(theta));
J = (1/m) * ((-y'*log(sigmoid(X*theta)) - (1-y)'*log(1-(sigmoid(X*theta))))) + (lambda/(2*m)) * (theta(2:length(theta)))' * (theta(2:length(theta)));
thetazero = theta;
thetazero(1) = 0;
grad = ((1/m) * ((sigmoid(X*theta))-y)'* X) + lambda/m * thetazero';
end
