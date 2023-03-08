clc;
clear;
close all;

 m = 10;
 s = 2;
 R = s*randn(1, 1e5) + m;
 N = 100;
 [h, b] = mhist(R, N);
 w = b(2) - b(1);
 h = h/sum(h)/w;
 stem(b,h);
 x = m-4*s:0.1:m + 4*s;
 wxi = 1/(s*sqrt(2*pi))* exp(-(x-m).^s/(s*s^2));
 hold on;
 plot(x, wxi, 'r', 'linewidth', 3);
 
 %%
clc;
clear;
close all;

 m = 10;
 s = 2;
 R = s*randn(1, 1e5) + m;
 N = 100000;
 [h, b] = mhist(R, N);
 w = b(2) - b(1);
 h = h/sum(h)/w;
 stem(b,h);
 x = m-4*s:0.1:m + 4*s;
 wxi = 1/(s*sqrt(2*pi))* exp(-(x-m).^s/(s*s^2));
 hold on;
 plot(x, wxi, 'r', 'linewidth', 3);
