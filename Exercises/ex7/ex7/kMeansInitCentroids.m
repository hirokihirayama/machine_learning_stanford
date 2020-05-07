function centroids = kMeansInitCentroids(X, K)

centroids = zeros(K, size(X, 2));
rand_example = randperm(size(X,1));
centroids = X(rand_example(1:K),:);

end
