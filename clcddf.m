function ddf = clcddf(zd,ddf2,n)
%clculate divided differences
    if n>3
        ddf = (clcddf(zd(2:n), ddf2(2:n-1), n-1) - clcddf(zd(1:n-1), ddf2(1:n-2), n-1))/(zd(n) - zd(1));
    else
        ddf = (ddf2(2) - ddf2(1))/(zd(3) - zd(1));
    end
end