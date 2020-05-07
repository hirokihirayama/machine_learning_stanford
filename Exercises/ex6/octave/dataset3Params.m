function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and
%   sigma. You should complete this function to return the optimal C and
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

%Code Written
C_test = [0.01 0.03 0.1 0.3 1 3 10 30]';
sigma_test = [0.01 0.03 0.1 0.3 1 3 10 30]';
lowest_error = inf ;
current_c = 0 ;
current_sigma = 0 ;

for i = 1:length(C_test);
  for j = 1: length(sigma_test);
    model = svmTrain(X,y,C_test(i), @(x1,x2) gaussianKernel(x1,x2,sigma_test(j)));
    predict = svmPredict(model,Xval);
    error = mean(double(predict ~= yval));
    if error < lowest_error;
      lowest_error=error;
      current_c=C_test(i);
      current_sigma=sigma_test(j);
    end
  end
end
%
C=current_c
sigma=current_sigma

% =========================================================================

end
