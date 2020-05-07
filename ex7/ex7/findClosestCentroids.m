function idx = findClosestCentroids(X, centroids)

K = size(centroids, 1);

idx = zeros(size(X,1), 1);

%Length of X
m = size(X,1);

%Loop for computing closest centroid. 
for i = 1:m
  distance = zeros(1,K);
  for j = 1:K
    distance(1,j) = sqrt(sum((X(i,:)-centroids(j,:)).^2));
  end
  [~,dist_d] = min(distance);
  idx(i,1) = dist_d;
end

end
