function [J, grad] = costFunction(theta, X, y)
% Setting parameters for function.
m = length(y);
% Training sample size.
J = 0;
% Starting with J = 0; for.
grad = zeros(size(theta));
J = (1/m) * ((-y'*log(sigmoid(X*theta))) - (1-y)'*log(1-(sigmoid(X*theta))));
grad = (1/m) * (sigmoid(X*theta)-y)'* X;
end
