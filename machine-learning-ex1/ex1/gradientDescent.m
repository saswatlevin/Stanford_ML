function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
h=zeros(97,1);
d=zeros(97,1);
a=0;
b=0;
t1=theta(1);
t2=theta(2);
for iter = 1:2,

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    
    i=1:2;
     a=sum((theta(1)+theta(2).*X(i,2))-y(i));
     b=sum(((theta(1)+theta(2).*X(i,2))-y(i)).*X(i,2));
    

    theta(1)=theta(1)-(alpha/2)*a;
    theta(2)=theta(2)-(alpha/2)*b; 
    
    printf("\n a=%d",a);
    printf("\n b=%d",b) 
    printf("\n theta(1)=%d\t",theta(1)); 
    printf("\n theta(2)=%d\t",theta(2)); 
    printf("\nJ_history=%d\t",J_history);
    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end
disp(h);
end
