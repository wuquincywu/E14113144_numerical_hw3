clc;clear;close;
xd = [0.698, 0.733, 0.768, 0.803];
yd = [0.7661, 0.7432, 0.7193, 0.6946];
x = 0.750;
y = zeros(1,4);
ys = cos(x);
error = zeros(1,4);
for i = 1:4
  y(i) = interpolation(i, xd(1:i), yd(1:i), x);
  error(i) = y(i) - ys;
end
eb = max(error) - min(error);