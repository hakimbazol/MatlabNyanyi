%Judul Lagu: Waktu yang Salah
Fs=44100;                    %Set frequency sample
t=0:1/Fs:0.4;                %Set bit speed of each tone
c=sin(2*pi*131*t);
d=sin(2*pi*147*t);
e=sin(2*pi*165*t);
f=sin(2*pi*175*t);
fkres=sin(2*pi*185*t);
g=sin(2*pi*196*t);
a=sin(2*pi*220*t);
b=sin(2*pi*247*t);
c1=sin(2*pi*262*t);
d1=sin(2*pi*294*t);
e1=sin(2*pi*330*t);
f1=sin(2*pi*349*t);
g1=sin(2*pi*392*t);
a1=sin(2*pi*440*t);
b1=sin(2*pi*494*t);
c2=sin(2*pi*523*t);
nol = [zeros(size(t))];     %Mske empty space
nada1=[g,a,b,b,b,b,b,g,g,b,a,nol,nol,g,fkres,...
    g,a,a,a,a,a,fkres,fkres,a,g,nol,nol,e,fkres,g,g,nol,...
    e,g,g,nol,e,g,g,nol,g,g,fkres,g,a,a,g,a,b,nol,nol];
nada2=[g,a,b,b,b,b,b,g,g,b,a,nol,nol,g,fkres,g,a,a,a,a,a,fkres,...
    fkres,a,g,nol,nol,e,fkres,g,g,nol,e,...
    g,g,nol,e,g,g,nol,g,g,fkres,e,fkres,g,nol];
lagu=[nada1,nada2];
sound(lagu,Fs);
%wavwrite(lagu,Fs,'waktuyangsalah.wav') use this command for earlier than
%R2012b
audiowrite('waktuyangsalah.wav',lagu,Fs)