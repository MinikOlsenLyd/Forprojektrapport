clc; clear; clf; close all;
imp = [1; zeros(19,1)];
b = 1;
a = [1 -0.8];

h = filter(b,a,imp);
figure(1)
stem(imp, '^')
title('Impulse')
axis([0 2 0 1])
figure(2)
impz(h)
axis([-1 20 0 1])
figure(3)
freqz(h)