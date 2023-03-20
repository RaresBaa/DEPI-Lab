clc;
clear;
close all;

m1 = 5;
m2 = 7;
s1 = 10;
s2 = 1;
r = 0.95;

pts = Gaussian2Dpts(m1, m2, s1, s2, r, 5e5);
figure(1);
subplot(2,2,1);
plot(pts(1,:), pts(2,:), 'x');
axis equal;

[h, b] = hist2D(pts, 100);
wb = b(2)-b(1);
h = h/sum(h(:))/wb^2;

subplot(2,2,2);
surf(b, b, h);

[w, bx, by] = Gaussian2D(m1, m2, s1, s2, r);
hold on;
mesh(bx, by, w);
hold off;

wxi = sum(w, 1)*wb;
weta = sum(w, 2)*wb;

subplot(2,2,3);
plot(bx(1,:), wxi);
subplot(2,2,4);
plot(bx(1,:), weta);