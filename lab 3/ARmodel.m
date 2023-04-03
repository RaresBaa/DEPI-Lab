function y = ARmodel(r,M,N)
% Out = ARMODEL(R,M,N);
% Creates a matrix of M instances of length N of a signal with known autocorrelation
% function R.
% 

if ~exist('M'),
    M = 50000;
end
if ~exist('N'),
    N = 250;
end
Rm = r(end);
r = r(1:end-1);
R = toeplitz(r);
%det(R)
r1 = [R(2:end,1);Rm];
a = -inv(R)*r1;
sigma = sqrt([r Rm]*[1;a]);

y = zeros(M,N+50);
for i = 1:M,
    y(i,:) = filter(1,[1 a'], sigma*randn(1,N+50));
end
y = y(:,51:end);