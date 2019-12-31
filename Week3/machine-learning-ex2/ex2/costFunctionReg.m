function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
SIZE_theta=size(theta);
h=X*theta;
h_theta=sigmoid(h);
one_by_m=(1/m);
lambda_by_two_m=(lambda/(2*m));
n=SIZE_theta(1,1);

j=2:n;
my_reg=lambda_by_two_m*sum(theta(j).^2);
  

i=1:m;

term_1=-(y(i)'*log(h_theta));
term_2=-((1-y(i)')*log(1-h_theta));

J=one_by_m.*sum(term_1+term_2)+my_reg;

k=2:n;
grad_reg=(lambda/m).*sum(theta(k));
%grad_0=one_by_m*(h_theta-y)'*X(:,1);
grad_rest=one_by_m*(h_theta-y)'*X;
grad=grad_reg+grad_rest;


% =============================================================

end
