%%Function to convert sparse matrix
function matrix = sparse2matrix (cellvec)
matrix=cell(cellvec{1}); %create cell matrix with 1st cellvec element dimensions
matrix(:)={cellvec{2}};
for i=3:length(cellvec)
    k=i;
    r=cellvec{k}(1,1); %row starts from 3rd element(1,1) of cellvec
    c=cellvec{k}(1,2); %col starts from 3rd element(1,2) of cellvec
    matrix{r,c}=cellvec{i}(1,3);
    k=k+1;    
end
matrix = cell2mat(matrix);
end