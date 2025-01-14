% Aleksandr Tka�enko TETfm-22
% Studento numeris: 20211619
% Lab. Nr.3

clear all
close all

x = 0.1:1/22:1;
y = (1+0.6*sin(2*pi*x/0.7) + 0.3*sin(2*pi*x))/2;
mok_zing = 0.15;

figure(1)
plot(x,y, 'b.-.');
d = 0.95;
c1 = 0.2;
c2 = 0.9;
r1 = 0.108;
r2 = 0.1;
w1 = rand();
w2 = rand();
w0 = rand();

% Skaiciuojame momentin? tinklo atsaka
for index = 10000
    for n = 1:20
        f1 = exp((-(x(n)-c1)^2)/((2*r1)^2));
        f2 = exp((-(x(n)-c2)^2)/((2*r2)^2));
        y1(n) = f1 * w1 + f2 * w2 + w0;
        e = y(n) - y1(n);
        
        % Tinklo apmokymas
        w1 = w1 + mok_zing * e * f1;
        w2 = w2 + mok_zing * e *f2;
        w0 = w0 + mok_zing * e;
    end
end

figure(2)
plot(x, y,'g*', x, y1, 'b*')