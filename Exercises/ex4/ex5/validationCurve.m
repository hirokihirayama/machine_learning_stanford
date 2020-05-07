function [lambda_vec, error_train, error_val] = ...
    validationCurve(X, y, Xval, yval)

lambda_vec = [0 0.001 0.003 0.01 0.03 0.1 0.3 1 3 10]';

% You need to return these variables correctly.
error_train = zeros(length(lambda_vec), 1);
error_val = zeros(length(lambda_vec), 1);

for i = 1:length(lambda_vec)
  lambda=lambda_vec(i);
  %Initiating subsets per the number of training examples.
  %Finding appropriate theta with the lambda vectors.
  theta = trainLinearReg(X,y,lambda);
  %Recomputing Cost from the Cost functions with lambda = 0 as theta has already been implemented
  %through computation of theta.
  error_train(i) = linearRegCostFunction(X,y,theta,0);
  error_val(i) = linearRegCostFunction(Xval,yval,theta,0);

end


end
