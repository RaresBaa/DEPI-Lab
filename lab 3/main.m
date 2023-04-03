clc;
clear;
close all;

r = [1 sin(2*pi*(.3:.3:5))./(2*pi*(.3:.3:5))];
%xi = ARmodel(r, 1e5, 300);
xi = cumsum(randn(1e5, 300),2);

figure(1);
for i = 1:5
    subplot(5,1,i);
    plot(xi(i*1000,:));
end

m = mean(xi,1);
figure(2);
plot(m);
axis([1 300 -1 1]);

R = zeros(60);
for i=1:60
    for j=1:60
        R(i,j) = mean(xi(:,i).*xi(:,j));
    end
end

figure(3);
mesh(R);

figure(4);
hold on;
for i = -10:10
    plot(diag(R,i));
end

xit = ARmodel(r, 1, 1e5);
mt = mean(xit)

Rt = zeros(1, 60);
for i = 0:59
    Rt(i+1) = mean(xit(1: end - i).*xit(1+i:end));
end
figure(5);
plot(R(1, :));
hold on;
plot(Rt, 'r');