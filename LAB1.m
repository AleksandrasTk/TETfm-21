% Aleksandr Tka�enko TETfm-22
% Studento numeris: 20211619
% Lab. Nr.3

clear all
close all

% 1. Po�ymi? duomenys
x1= [0.37022 0.31565 0.36484 0.46111 0.14913 0.18474 0.49187];
x2= [0.8111 0.83101 0.8518 0.82518 0.77104 0.6279 0.80889];
% 2. Norimas atsakas
d= [1 1 1 1 0 0 1];
% 4. Sugeneruojami atkiri skai?iai parametrams w1, w2, b
w1= randn(1);
w2= randn(1);
b= randn(1);
t_n=0;

while t_n==0
    while t_n==0;
        
% Pirmasis pavizdys
% 5.1 Pasverta suma
v= x1(1)*w1+x2(1)*w2+b;
% 5.2 Pritaikome aktyvavimo t-ja
    if  v> 0
        y= 1;
    else
        y= 0;
    end
% 6. Skai?iuojame klaid?
e= d(1)-y;
% 7. Mokymosi �ingsnis
n= 0.1;
% 8. Atnaujiname ry�io svorius (parametrus)
    if abs(e)==1
       w1= w1+n*e*x1(1);
       w2= w2+n*e*x2(1);
       b= b+n*e;
       t_n=0;
       test1=0;
    else
       t_n=1;
       test1=1;
    end
end
% 9. Kartojame 5-8 veiksmus su kitais kintamaisiais
while t_n==1
% Antrasis pavizdys
% 5.1 Pasverta suma
v=x1(2)*w1+x2(2)*w2+b;
% 5.2 Pritaikome aktyvavimo t-ja
    if  v>0
        y=1;
    else
        y=0;
    end
% 6. Skai?iuojame klaid?
e=d(2)-y;
% 7. Mokymosi �ingsnis
n=0.1;
% 8. Atnaujiname ry�i? svorius (parametrus)
    if abs(e)==1
       w1= w1+n*e*x1(2);
       w2= w2+n*e*x2(2);
       b=b+n*e;
       t_n=0;
       test2=0;
    else
       t_n=3;
       test2=1;
    end
end
% 9. Kartojame 5-8 veiksmus su kitais kintamaisiais

while t_n==3
% Tre?iasias pavizdys
% 5.1 Pasverta suma
v=x1(3)*w1+x2(3)*w2+b;
% 5.2 Pritaikome aktyvavimo t-ja
if  v>0
    y=1;
else
    y=0;
end
% 6. Skai?iuojame klaid?
e=d(3)-y;
% 7. Mokymosi �ingsnis
n=0.1;
% 8. Atnaujiname ry�i? svorius (parametrus)
   if abs(e)==1
      w1= w1+n*e*x1(3);
      w2= w2+n*e*x2(3);
      b=b+n*e;
      t_n=0;
      test3=0;
    else
      t_n=4;
      test3=1;
    end
end
% 9. Kartojame 5-8 veiksmus su kitais kintamaisiais

while t_n==4
% Ketvirtas pavizdys
% 5.1 Pasverta suma
v=x1(4)*w1+x2(4)*w2+b;
% 5.2 Pritaikome aktyvavimo t-ja
    if  v>0
        y=1;
    else
        y=0;
    end
% 6. Skai?iuojame klaid?
e=d(1)-y;
% 7. Mokymosi �ingsnis
n=0.1;
% 8. Atnaujiname ry�i? svorius (parametrus)
   if abs(e)==1
      w1= w1+n*e*x1(4);
      w2= w2+n*e*x2(4);
      b=b+n*e;
      t_n=0;
      test4=0;
    else
      t_n=5;
      test4=1;
    end
end
% 9. Kartojame 5-8 veiksmus su kitais kintamaisiais

while t_n==5
% Penktasis pavizdys
% 5.1 Pasverta suma
v=x1(5)*w1+x2(5)*w2+b;
% 5.2 Pritaikome aktyvavimo t-ja
    if  v>0
        y=1;
    else
        y=0;
    end
% 6. Skai?iuojame klaid?
e=d(5)-y;
% 7. Mokymosi �ingsnis
n=0.1;
% 8. Atnaujiname ry�i? svorius (parametrus)
    if abs(e)==1
       w1= w1+n*e*x1(5);
       w2= w2+n*e*x2(5);
       b=b+n*e;
       t_n=0;
       test5=0;
    else
       t_n=6;
       test5=1;
    end
end
% 9. Kartojame 5-8 veiksmus su kitais kintamaisiais

while t_n==6
% �e�tasis pavizdys
% 5.1 Pasverta suma
v=x1(6)*w1+x2(6)*w2+b;
% 5.2 Pritaikome aktyvavimo t-ja
    if  v>0
        y=0;
    else
        y=1;
    end
% 6. Skai?iuojame klaid?
e=d(6)-y;
% 7. Mokymosi �ingsnis
n=0.1;
% 8. Atnaujiname ry�i? svorius (parametrus)
   if abs(e)==1
      w1= w1+n*e*x1(6);
      w2= w2+n*e*x2(6);
      b=b+n*e;
      t_n=0;
      test6=0;
    else
      t_n=7;
      test6=1;
    end
end
% 9. Kartojame 5-8 veiksmus su kitais kintamaisiais

while t_n==7
% Septintasis pavizdys
% 5.1 Pasverta suma
v=x1(7)*w1+x2(7)*w2+b;
% 5.2 Pritaikome aktyvavimo t-ja
    if  v>0
        y=1;
    else
        y=0;
    end
% 6. Skai?iuojame klaid?
e=d(7)-y;
% 7. Mokymosi �ingsnis
n=0.1;
% 8. Atnaujiname ry�i? svorius (parametrus)
   if abs(e)==1
      w1= w1+n*e*x1(3);
      w2= w2+n*e*x2(3);
      b=b+n*e;
      t_n=0;
      test7=0;
   else
      test7=1;
      t_n=8;
   end
   
end
end