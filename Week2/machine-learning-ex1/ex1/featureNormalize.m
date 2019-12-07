function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 

%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
% 

X_norm = X;

SIZE_X=size(X);
m=SIZE_X(1,1);

mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));


element_sigma=0;
element_mu=0;

%mean for each feature separately
for j=2:SIZE_X(1,2),
  mu(j)=mean(X(:,j));
end
%standard deviation of each feature

for j=2:SIZE_X(1,2),
  	sigma(j)=std(X(:,j));

end

%mean mormalization of feature
for i=1:m,
	for j=2:SIZE_X(1,2),
	  element_mu=mu(j);
	  element_sigma=sigma(j);
      X_norm(i,j)=((X(i,j)-element_mu)/element_sigma);
    end  
end





% ============================================================

end
