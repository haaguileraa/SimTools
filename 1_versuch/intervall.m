clear, clc


%myfun = @(x)(exp(-x)-5);
%intrv = [-2;-1];
%x=-3:.01:3; plot(x,myfun(x))
%ns = nullstelle(myfun,[-2;-1])


myfun = @(x)(-0.25*x.^3+1.25*x); 
intrv = [-3;-1];
x=-3:.1:3; plot(x,myfun(x))
ns = nullstelle(myfun,intrv)

function ns = nullstelle(myfun,intrv)
    tolerance = 1e-2;
    a = intrv(1);
    b = intrv(2);
    c = (a+b)/2; %1
    fa = myfun(a);
    fc = myfun(c); %2
    
    %4
    if (abs(fc) <= tolerance)
        ns = c
        return
    end
    
    %3
    if (fa*fc <= tolerance) % wenn f(a) und f(c) verschiedene Vorzeichen haben
        ns = nullstelle(myfun,[intrv(1); c]);
    else %ansonsten
        ns = nullstelle(myfun,[c; intrv(2)]);
    end
end
