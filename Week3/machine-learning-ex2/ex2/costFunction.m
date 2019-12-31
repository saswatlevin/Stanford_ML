function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));
one_by_m=1/m;

SIZE_theta=size(theta);
m_t=SIZE_theta(1,1);
n_t=SIZE_theta(1,2);

printf("\n m_t=%d\t",m_t);
printf("\n n_t=%d\t",n_t);

SIZE_X=size(X);
m_X=SIZE_X(1,1);
n_X=SIZE_X(1,2);

printf("\n m_X=%d\t",m_X);
printf("\n n_X=%d\t",n_X);



%size(X_into_theta)



% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%


h=sigmoid(X*theta);
	
	

printf("\n Size of h=%d\t",size(h));

i=1:m;
%j=1:n_X;
J=-one_by_m*sum((y'(i)*log(h)) + ((1-y(i)')*log((1-h))));
%printf("\n J=%d\t",J);
 
grad=one_by_m*(h-y)'*X; 





% =============================================================

end
