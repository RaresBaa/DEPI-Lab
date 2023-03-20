function [H,bins]=hist2D(pts,N)

if ~exist('N','var')
    N=100;
end

if size(pts,1) == 2;
    pts = pts';
end

m = min(pts(:));
M = max(pts(:));

PTS = 1+floor((N-1)*(pts-m)/(M-m));
bins = m:(M-m)/(N-1):M;
H = accumarray(PTS, 1,[N N])';

%display-ul se face cu
%figure;surf(bins,bins,H);

