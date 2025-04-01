clc;clear;close;
step = 0.001;
t = 3:step:13;
d = zeros(1,length(t));
v = zeros(1,length(t)-1);
for i = 1:length(d)
    d(i) = hermite(t(i));
end
for i = 1:length(v)
    v(i) = (d(i+1) - d(i))/step;
end
%%
% (a)
d10 = d(7/step+1);
v10 = v(7/step+1);

% (b)
plot(t(1:10/step),v)
xlabel('time')
ylabel('velocity')

target = 5280*55/60;
[~, index] = min(abs(v(1:1/step) - target));
t55 = (index-1)*step + 3;
%(c)
vmax = max(v);

