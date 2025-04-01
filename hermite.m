function h = hermite(x)
%use divided-difference form of the Hermite polynomials to appoximate
%function value(distance) for givan x(time)
xd = [3, 5, 8, 13];
fd = [200, 375, 620, 990];
fpd = [77, 80, 74, 72];
n = 4;

zd = zeros(1, 2*n);
for i = 1:n
    zd(2*i) = xd(i);
    zd(2*i-1) = xd(i);
end

ddf2 = zeros(1, 2*n-1);
for i = 1:n
    ddf2(2*i-1) = fpd(i);
    if i<n
        ddf2(2*i) = (fd(i+1) - fd(i))/(xd(i+1) - xd(i));
    end
end

h = fd(1) + ddf2(1)*(x-zd(1));
for i = 3:2*n
    temp = clcddf(zd(1:i), ddf2(1:i-1), i);
    for j = 1:i-1
        temp = temp*(x - zd(j));
    end
    h = h + temp;
end

end