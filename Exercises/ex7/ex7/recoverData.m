function X_rec = recoverData(Z, U, K)

X_rec = zeros(size(Z, 1), size(U, 1));

m = size(Z,1);
l = size(U,1);
for i = 1:m
  for j = 1:l
    v=Z(i,:);
    recovered=v*U(j,1:K)';
    X_rec(i,j)=recovered;
  end
end

end
