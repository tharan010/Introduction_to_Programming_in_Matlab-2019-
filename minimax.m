function [mmr, mmm]=minimax(A)
[m,n]=size(A);
mmri=max(A,[],2)-min(A,[],2);
mmr=mmri';
mmm=max(max(A))-min(min(A));