function y = meinesume(n,varargin)  
    if length(varargin)>=1
        y = sum(0:varargin{1}:n);
    else
        y = sum(0:n);
        end
    end
