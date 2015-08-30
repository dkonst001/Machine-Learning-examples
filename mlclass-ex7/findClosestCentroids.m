function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%
temp_idx = zeros(size(X,1), K);
for i=1:K
% cent is a matrix with same size as X cloning the i'th centroid horizontally by the number of rows in X 
	cent = repmat(centroids(i,:),[size(X,1) 1]);
	% calculate the distance between X and cent
	temp_idx(:,i) = sum((X - cent).^2,2);
end

% min over rows to find the closest centroid to each sample
[A idx] = min(temp_idx,[],2); 





% =============================================================

end

