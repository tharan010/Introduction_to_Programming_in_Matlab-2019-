function [summa, index] = max_sum (v,n)

if n>length(v) 
    summa=0; index=-1;
else
    i=n; j=1; summa=0; 
    while j<length(v);
        summa = summa + sum(v(j:i));
        i=n+1;
        j=j+1;
    end
end
end




