function distance = get_distance (c1,c2)
[num,txt,data]=xlsread('Distances.xlsx');
i=strcmpi(c1,data(:,1));
i=find(i==1);
j=strcmpi(c2,data(1,:));
j=find(j==1);
if isscalar(i)==0 || isscalar(j)==0
    distance = -1;
else
    distance=cell2mat(data(i,j));
end
end
