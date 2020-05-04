function [error_train, error_val] = ...
    learningCurve(X, y, Xval, yval, lambda)
m = size(X, 1);
error_train = zeros(m, 1);
error_val   = zeros(m, 1);


for i = 1:m
  %Initiating subsets per the number of training examples.
  X_placeholder = X(1:i,:);
  y_placeholder = y(1:i,:);
  %Extracting theta out from Linear Regression.
  theta = trainLinearReg(X_placeholder,y_placeholder,lambda);
  %Recomputing Cost from the Cost functions.
  error_train(i) = linearRegCostFunction(X_placeholder,y_placeholder,theta,0);
  error_val(i) = linearRegCostFunction(Xval,yval,theta,0);
end
%Returns both the training error and validation error.
end
