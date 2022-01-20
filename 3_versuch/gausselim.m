function x = gausselim(A,b)
    [z,s] = size(A);
    x = zeros(size(b));
    %t = [A b]
    %t(:,end) = b;
    % Vorwärtselimination,
    for i=1:z-1
        for j=i+1:z
            faktor =  A(j,i)/A(i,i);
            A(j,:)= A(j,:)-faktor*A(i,:);
            b(j) = b(j) - faktor*b(i);
        end
    end
    if A(z,s) == 0
        fprint('System nicht lösbar')
        return
    end
    % Rückwärtseinsetzen
    x(z) = b(z)/A(z,s);
    for i = z-1:-1:1 
        h = 0;
        for j = (i+1):z
            h = h+A(i,j)*x(j);
        end
        x(i) = (b(i)-h)/A(i,i);
    end
end