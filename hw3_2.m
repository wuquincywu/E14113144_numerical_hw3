clc;clear;close;
xd = [0.3, 0.4, 0.5, 0.6];
yd = [0.3-0.740818, 0.4-0.670320, 0.5-0.606531, 0.6-0.548812];


%secant method
x = [0,1,0];
y = ones(1,3);
iter = 0;
for i = 1:2
        y(i) = interpolation(4, xd, yd, x(i));
end
while(abs(y(3))>1e-5)
    iter = iter + 1;
    x(3) = x(2) - (x(2) - x(1))*y(2)/(y(2) - y(1));
    y(3) = interpolation(4, xd, yd, x(3));
    for i = 1:2
        x(i) = x(i+1);
        y(i) = y(i+1);
    end
    if iter > 1000
        break;
    end
end
result = x(3);