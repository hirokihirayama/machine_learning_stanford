function centroids = computeCentroids(X, idx, K)

[m n] = size(X);

centroids = zeros(K, n);

%Computing mean for each centroid.
for i=1:K
  centroids(i,:) = mean(X(idx==i,:));
end

end
