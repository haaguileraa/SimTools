function [f1, f2] = kreis(r,x0,y0,t) % V-2.3 
    f1 = r*cos(t)+x0;
    f2 = r*sin(t)+y0;
end