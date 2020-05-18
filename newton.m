function x0 = newton(f, f_1, f_2)
i = 0;
while true
    if f(i)*f(i+1) <=0 
        break
    end
    if f((-1)*i)*f(-1*i -1) <=0
        i = -1*i-1;
        break
    end
    i = i+1;
end
if f(i)*f_2(i)>0
    x0=i;
else
    x0=i+1;
end
eps = 0.001;
while abs(f(x0)/f_1(x0))>eps
    x0 = x0 - f(x0)/f_1(x0);
end