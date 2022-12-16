% Aleksandr Tkaèenko TETfm-22
% Studento numeris: 20211619
% Lab. Nr.2

clear all
close all

% Pasirinkti DNT strukt?ra
% Vienas iš?jimas x
% Vienas pasl?ptas sluoksnis su 5 neuronais
% Du iš?jimai y1 ir y2
% 1. Surinkti/paruošyi mokymo duomen? rinkin?
x=0.5:1/21:1;
y1=(1+0.6*sin(2*pi*x/1.7)+0.3*sin(2*pi*x))/2;
y2=(1+0.2*cos(2*pi*x/0.7)+0.5*sin(2*pi*x))/2;
plot(x,y1,'kx', x,y2,'b*')
% 2. Sugeneruoti pradines ryši? svori? reikšmes.
% Pirmo sluoksnio parametrai
w11_1=randn(1); b1_1=randn(1);
w21_1=randn(1); b2_1=randn(1);
w31_1=randn(1); b3_1=randn(1);
w41_1=randn(1); b4_1=randn(1);
w51_1=randn(1); b5_1=randn(1);
% Antro sluoksnio parametrai
w11_2=randn(1); b1_2=randn(1);
w12_2=randn(1);
w13_2=randn(1);
w14_2=randn(1);
w15_2=randn(1);

w21_2=randn(1); b2_2=randn(1);
w22_2=randn(1);
w23_2=randn(1);
w24_2=randn(1);
w25_2=randn(1);

mok_zing=0.3;
for n=1:10
% 3. Apskai?iuoti tinklo atsak? (momentin?).
% Pasverta suma
v1_1=x(n)*w11_1+b1_1;
v2_1=x(n)*w21_1+b2_1;
v3_1=x(n)*w31_1+b3_1;
v4_1=x(n)*w41_1+b4_1;
v5_1=x(n)*w51_1+b5_1;

% Aktyvavimo f-ja 1 sluoksnije
y1_1=1/(1+exp(-v1_1));
y2_1=1/(1+exp(-v2_1));
y3_1=1/(1+exp(-v3_1));
y4_1=1/(1+exp(-v4_1));
y5_1=1/(1+exp(-v5_1));

% Pasverta suma iš?jimo sluosknyje
v1_2=y1_1*w11_2+y2_1*w12_2+y3_1*w13_2+y4_1*w14_2+y5_1*w15_2+b1_2;
v2_2=y1_1*w21_2+y2_1*w22_2+y3_1*w23_2+y4_1*w24_2+y5_1*w25_2+b1_2;
% Skai?iuojame iš?jimo/tinklo atsak? pritaikydami aktyvavimo f-ja
y1_apskaiciuota=v1_2;
y2_apskaiciuota=v2_2;
% 4. Palyginti su norimu atsaku ir apskai?iuoti klaid?.
e1=y1(n)-y1_apskaiciuota;
e2=y2(n)-y2_apskaiciuota;
% 5. Atnaujinti ryši? svorius taip, kad klaida maž?tu (atlikti tinklo mokym?)
delta_out_1=e1;
delta_out_2=e2;

delta_1_1=y1_1*(1-y1_1)*(delta_out_1*w11_2+delta_out_2*w21_2);
delta_2_1=y2_1*(1-y2_1)*(delta_out_1*w12_2+delta_out_2*w22_2);
delta_3_1=y3_1*(1-y3_1)*(delta_out_1*w13_2+delta_out_2*w23_2);
delta_4_1=y4_1*(1-y4_1)*(delta_out_1*w14_2+delta_out_2*w24_2);
delta_5_1=y5_1*(1-y5_1)*(delta_out_1*w15_2+delta_out_2*w25_2);

% Atnaujinti svorius iš?jimo sluoksnije
w11_2=w11_2+mok_zing*delta_out_1*y1_1;
w12_2=w12_2+mok_zing*delta_out_1*y2_1;
w13_2=w13_2+mok_zing*delta_out_1*y3_1;
w14_2=w14_2+mok_zing*delta_out_1*y4_1;
w15_2=w15_2+mok_zing*delta_out_1*y5_1;
b1_2=mok_zing*delta_out_1*1;

w21_2=w21_2+mok_zing*delta_out_1*y1_1;
w22_2=w22_2+mok_zing*delta_out_1*y2_1;
w23_2=w23_2+mok_zing*delta_out_1*y3_1;
w24_2=w24_2+mok_zing*delta_out_1*y4_1;
w25_2=w25_2+mok_zing*delta_out_1*y5_1;
b2_2=mok_zing*delta_out_2*1;

% Atnaujinti svorius pasleptajame sluoksnyje

w11_1=w11_1+mok_zing*delta_out_2*x(n);
w21_1=w21_1+mok_zing*delta_out_2*x(n);
w31_1=w31_1+mok_zing*delta_out_2*x(n);
w41_1=w41_1+mok_zing*delta_out_2*x(n);
w51_1=w51_1+mok_zing*delta_out_2*x(n);
b1_1=b1_1+1+mok_zing*delta_out_2;
b2_1=b2_1+1+mok_zing*delta_out_2;
b3_1=b3_1+1+mok_zing*delta_out_2;
b4_1=b4_1+1+mok_zing*delta_out_2;
b5_1=b5_1+1+mok_zing*delta_out_2;
end
