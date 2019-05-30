function too_young = under_age(age,limit);
if nargin==2 %If 2 input arguments
    if age<=limit %If age is less than limit
    too_young=true; %okay
    end
else 
    too_young=false; % not okay
end
if nargin==2 %if one input argument
    %default limit is 21
    if age<=21 %If age is less than 21
    too_young=true; % okay
    else 
    too_young=false; % not okay 
    end
end
    

