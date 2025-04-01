function  y = interpolation(n,xd,yd,x)
  
    y = 0;
    for i = 1:n
      temp = yd(i);
      for j = 1:n
        if(j ~= i)
            temp = temp*(x - xd(j))/(xd(i) - xd(j));
        end
      end
        y = y + temp;
    end
end