fun = @(a) (15*a)^2 - 10*(10*a)*cos(0.2*pi*15*a) + (10*a)^2 - 15*15*a*cos(0.4*pi*10*a);
alpha0 = fminbnd(fun,0,1)
vector0=[0,0];
vector1 = [0,0] - 1*alpha0*gradient_func(vector0)

grad2=gradient_func(vector1)
fun1 = @(a) (7.8+30.9*a)^2 - 10*(5.2-46.4*a)*cos(0.2*pi*(7.8+30.9*a)) + (5.2-46.4*a)^2 - 15*(7.8+30.9*a)*cos(0.4*pi*((5.2-46.4*a)));
alpha1 = fminbnd(fun1,0,1)


function grad=gradient_func(X)
    grad = [2*X(1)+2*pi*X(2)*sin(0.2*pi*X(1))-15*cos(0.4*pi*X(2)),2*X(2)+6*pi*X(1)*sin(0.4*pi*X(2))-10*cos(0.2*pi*X(1))];
end

