function valid = valid_date(year,month,date)
months31=[1 3 5 7 8 10 12];
months30=[4 6 9 11];
 
if (isscalar(year)==0)||(isscalar(month)==0)||(isscalar(date)==0)
    valid=false;
    return;
    
elseif (year==0)||(month==0)||(date==0)
    valid=false;
    return;
       
elseif isnan(year)==1||isnan(month)==1||isnan(date)==1
    valid=false;
    return;
            
elseif year~=fix(year)||month~=fix(month)||date~=fix(date)
    valid=false;
    return;
       
elseif (month>12)==1
    valid=false;
    return;
    
else 
    valid= true;
end

% Non leap year - not div by 4
if rem(year,4)~=0 
    if(ismember(month, months31)==1) && ((date<=1||date<=31)==1)
    valid=true;
    elseif(ismember(month, months30)==1) && ((date<=1||date<=30)==1)
    valid=true;
    elseif ((month==2)==1) && (date<=28)==1
    valid=true;
    else valid=false;
    end 
    return;
end
% leap year - div by 100 and 400
if (rem(year,100)==0) && (rem(year,400)==0)
    if (month==2)==1
        if (date<=29)==1
            valid=true;
        else
            valid=false;
        end
    elseif(ismember(month, months31)==1) && ((date<=1||date<=31)==1)
        valid=true;
    elseif(ismember(month, months30)==1) && ((date<=1||date<=30)==1)
        valid=true;
    else
        valid=false;
    end
    return;
end
% Non leap year - div by 100 and not by 400
if (rem(year,100)==0) && (rem(year,400)~=0) 
    if (month==2)==1
            if (date<=28)==1
                valid=true;
            else
                valid=false;
            end
    elseif(ismember(month, months31)==1) && ((date<=1||date<=31)==1)
    valid=true;
    elseif(ismember(month, months30)==1) && ((date<=1||date<=30)==1)
    valid=true;
    else valid=false;
    end
    return;
end
%leap year div by 4 or 400    
if (rem(year,4)==0) || (rem(year,4)==0) && (rem(year,400)==0)
    if (month==2)==1
        if(date<=29)==1
        valid=true;
        else valid=false;
        end
    elseif(ismember(month, months31)==1) && ((date<=1||date<=31)==1)
    valid=true;
    elseif(ismember(month, months30)==1) && ((date<=1||date<=30)==1)
    valid=true;
    else
        valid=false;
    end
    return;
end     
    
end
