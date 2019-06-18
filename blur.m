function output = blur (img,w)
A=img;
[m,n]=size(A);
zero=uint8(zeros(size(A)));
r=1; c=1;    
while r<=m 
    while c<=n

        x = r-w;
        y = c-w;
        l = w*2+1; % length of submatrix
        j=0; k=0; avg = 0; s=0; %j - row ; k - column
        while j<l
            while k<l
                if x+j>0 && y+k>0 && x+j<=m && y+k<=n
                    avg = avg + double(A(x+j,y+k));
                    s=s+1;
                end
                k=k+1;
            end
            k = 0;
            j=j+1;
        end
        zero(r,c) = uint8(avg/s);
        c=c+1;
    end
    r=r+1;
    c=1;
end

output=zero;
imshow(zero);
end