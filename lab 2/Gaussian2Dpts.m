function pts=Gaussian2Dpts(m1,m2,s1,s2,r,N);

if ~exist('N','var');
    N = 100000;
end
K = [s1^2 r*s1*s2;r*s1*s2 s2^2];
[l,v]=eig(K);
n = randn(2,N);
n(1,:) = n(1,:)*sqrt(v(1));
n(2,:) = n(2,:)*sqrt(v(4));
pts = l*n;
pts(1,:) = pts(1,:) + m1;
pts(2,:) = pts(2,:) + m2;



