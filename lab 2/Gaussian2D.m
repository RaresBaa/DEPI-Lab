function [w,x,y]=Gaussian2D(m1,m2,s1,s2,r);

M = max(m1+4*s1,m2+4*s2);
m = min(m1-4*s1,m2-4*s2);
pas = 0.1;
[x,y] = meshgrid(m:pas:M,m:pas:M);
w = 1/(2*pi*s1*s2*sqrt(1-r^2))*exp(-1/(2*(1-r^2))*(((x-m1)/s1).^2+((y-m2)/s2).^2-2*r*(x-m1).*(y-m2)/(s1*s2)));
