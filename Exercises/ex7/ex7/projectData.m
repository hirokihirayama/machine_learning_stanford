function Z = projectData(X, U, K)

Z = zeros(size(X, 1), K);

m = size(X,1);

for i=1:m
  for j=1:K
    x_2 = X(i,:);
    projection = x_2 * U(:,j);
    Z(i,j) = projection;
  end
end

end
