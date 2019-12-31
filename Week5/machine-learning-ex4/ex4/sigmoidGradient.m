function g = sigmoidGradient(z)
%SIGMOIDGRADIENT returns the gradient of the sigmoid function
%evaluated at z
%   g = SIGMOIDGRADIENT(z) computes the gradient of the sigmoid function
%   evaluated at z. This should work regardless if z is a matrix or a
%   vector. In particular, if z is a vector or matrix, you should return
%   the gradient for each element.

g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the gradient of the sigmoid function evaluated at
%               each value of z (z can be a matrix, vector or scalar).
SIZE_Z=size(z);
m=SIZE_Z(1,1);
for i=1:m,
  g(i)=1/(1+exp(-z(i)));
end

for i=1:m,
  g(i)=g(i)*(1-g(i));
end












% =============================================================




end
