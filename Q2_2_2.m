alpha0 = armijo([0,0],0.4,0.05,0.4)
gradient_descent([0,0]);


function alpha=armijo(X,init_alpha,c1,beta)
    alpha = init_alpha;
    while (main_func(X+alpha*gradient_func(X))) > (main_func(X) + c1*alpha*gradient_func(X)*-1*gradient_func(X)')
        alpha = beta*alpha;
    end
end

function vector=gradient_descent(start)
    vector = start;
    alpha=armijo([0,0],0.5,0.05,0.4);
    iteration=2;
    while (iteration>1)
        vector = vector - 1*alpha*gradient_func(vector);
        iteration=iteration-1;
        alpha=armijo(vector,alpha,0.05,0.4);
    end
    alpha1=alpha
end

function grad=gradient_func(X)
    grad = [2*X(1)+2*pi*X(2)*sin(0.2*pi*X(1))-15*cos(0.4*pi*X(2)),2*X(2)+6*pi*X(1)*sin(0.4*pi*X(2))-10*cos(0.2*pi*X(1))];
end

function func = main_func(X)
    func = X(1)^2 - 10*X(2)*cos(0.2*pi*X(1))+ X(2)^2 - 15*X(1)*cos(0.4*pi*X(2));
end
    
