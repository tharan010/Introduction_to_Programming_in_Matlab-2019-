function [indices] = saddle (M)
[r,c]=size(M); %size of the input matrix
indices=[]; %initiate empty matrix
ri=[]; ci=[];
for j=1:c %column counter
    for i=1:r %row counter
        el=(M(i,j)); %localize element in matrix
        r_max=max(M(i,:)); %max element in all rows
        c_min=min(M(:,j)); %min element in ell columns
        if el>=r_max && el<=c_min %element > in row and >in col
            ri=[ri i];
            ci=[ci j];
            indices=[ri' ci']; %append the elements into output matrix
        end
    end
end
end