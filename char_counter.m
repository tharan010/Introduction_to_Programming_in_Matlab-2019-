function charnum = char_counter (fname, character)
if isa(character,'char') == 0
    charnum=-1;
    return;   
end
try 
    fid=fileread(fname);
catch
    charnum=-1;
    return;
end
charnum=0;
for i=1:numel(fid)
    if character==fid(i)
       charnum=charnum+1;
    end
end

