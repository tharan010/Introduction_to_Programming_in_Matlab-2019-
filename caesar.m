function [coded] = caesar (a,n) 
c =0;
an ='';
for k = double(a)
    i=k-31;
    if n>=0
        n=rem(n,95);
        if n+i > 95
            c = n+i-95;
        else 
            c = n+i;
        end
    else
        n=rem(abs(n),95)*-1;
        if i+n<1
            c=95+(i+n);
        else
            c=i+n;
        end
    end
    c=c+31;
    an = [an,char(c)];
end

coded=an;
end