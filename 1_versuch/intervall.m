% clear, clc
% 
% 
% %myfun = @(x)(exp(-x)-5);
% %intrv = [-2;-1];
% %x=-3:.01:3; plot(x,myfun(x))
% %ns = nullstelle(myfun,[-2;-1])
% 
% 
% myfun = @(x)(-0.25*x.^3+1.25*x); 
% intrv = [-3;-1];
% %x=-3:.1:3; plot(x,myfun(x))
% ns = nullstelle(myfun,intrv)

function ns = intervall(myfun,intrv)
    tolerance = 1e-2;
    a = intrv(1);
    b = intrv(2);
    c = (a+b)/2; %1
    fa = myfun(a);
    fc = myfun(c); %2
    
    %4
    if (abs(myfun(c)) <= tolerance)
        ns = c
    elif (myfun(a)*myfun(c)> tolerance) % wenn f(a) und f(c) verschiedene Vorzeichen haben
        intervall(myfun,[c; intrv(2)]);
    else %ansonsten
        intervall(myfun,[intrv(1); c]);
    end
end
