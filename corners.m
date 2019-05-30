function [top_left, top_right, bottom_left, bottom_right]=corners(C)
top_left=C(1,1);
top_right=C(1,end);
bottom_left=C(end,1);
bottom_right=C(end,end);
end

