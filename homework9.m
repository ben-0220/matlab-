a=3;
b=6;
func=@(x) tan(x)-x 
c=0;
while abs(a-b) > 0.000000000000001
    c=(a+b)/2;
    if func(c)*func(a)<0
        b=c;
    elseif func(c)*func(b)<0 
        a=c;    
    end    
end
digits(17)
vpa(c)