% Aleksandr Tkaèenko TETfm-22
% Studento numeris: 20211619
% ND Nr. 2

Šis namų darbas susyjes su mano baigiamuoju darbu.
Baigiamajame darbe naudoju Raspberry pi Zero w 2 mikrovaldiklius, kurie yra nutole taškai. Pagrindinis valdiklis kuris surenka duomenis yra Raspeberry pi 4. 
Baigiamajame darbe apjungiu visus įrenginius tarpusavyje skirtingais protokolais, taip testuoju ir ieškau pačio optimaliausio varianto, kuris:
1. Greitai komunikuotu;
2. Taupytu energiją;
3. Signalas nebūtų pertraukiamas ir kokybiškas;
Šiam darbui naudoju Node-red aplinką, kurioje programuoju esamus valdiklius. Šiuo metu suprogramuotas ir bandomas MQTT protokolas. 
MQTT protokolui įgyvendinti naudojamas localus tinklas. Visi valdikliai tarpusavyje bendrauja per Wifi, MQTT protokolą. 
Node-red aplinkoje yra daug visokiausių sukurtų programų, kurios naudojamos namų automatizavimui, daviklių analizei ir t.t. Aplinka supaprastinta, kad galėtu kiekvienas pradedantis programuotojas ja naudotis.
Taip pat yra išplėtinės galimybės rašyti skriptus ir naudoti jas kaip funkcijas įvykiams. 

Kad paleisti šią sistemą per Windows operacinę sistemą lokaliai reikalinga atlikti šie žingsniai:
1. Instaliuoti Node.js (optimaliausia verija 6iam projektui yra 14.x)
2. Tuomet cmd (command  prompt) instaliuoti node-red, tai atlikti su komanda:
npm install -g --unsafe-perm node-red
4. Instaliavus galima paleisti node-red programavimo aplinka su komanda:
node-red
P.S. jei taip neveikia reikia paleisti localiai per komandą:
C:\Users\<user>\AppData\Roaming\npm\node-red.cmd
Pastaba: kur User įrašyti savo kompiuterio vardą.
5. Atsidaryti programavimo aplinka geriausia per Chrome arba Firefox naršykles įvedus į paiešką:
http://localhost:1880/
6. Aplinka paleista programavimui.

Išbadykime projektą kurį radome bendrame node-red forume, kad galima būtų skaičiuoti atbuline tvarką laiką, taip pat redaguoti jo trukmę:
Nuoroda į projekto užklausą:
https://discourse.nodered.org/t/countdown-timer/47434
1. Importuojame kodą;
2. Kad kodas veiktu, mums papildomai reikia parsisiųsti priedus:
1) node-red-dashboard:
https://flows.nodered.org/node/node-red-dashboard
2) node-red-contrib-ui-digital-display:
https://flows.nodered.org/node/node-red-contrib-ui-digital-display
2. Įkrauname programą;
3. Išbandome kodą local atvaizdavimo lange:
http://localhost:1880/ui
4. Perprogramavau šį laikmatį, kad būtų galimybę pridėti/atminti po vieną minutę ir taip pat po vieną sekundę. 

Šis laikmatis naudojamas mano baigiamajame darbe, kaip žaidimo ir pertraukos laiko skaičiuoklę.
