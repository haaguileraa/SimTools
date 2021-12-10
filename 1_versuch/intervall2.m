function ns = intervall2(myfun,intrv)
    tolerance = 1e-6;
    a = intrv(1);
    b = intrv(2);
    c = (a+b)/2; %1
    fa = myfun(a);
    fc = myfun(c); %2
    if abs(fc) <= tolerance
       ns = c
    elseif (sign(fa) == sign(fc))
        ns = intervall2(myfun,[c; intrv(2)]);
    else
        ns = intervall2(myfun,[intrv(1); c]);
    end
end