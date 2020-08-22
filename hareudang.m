%Judul Lagu: Hareudang
Fs=44100;
t=0:1/Fs:0.27;
c=sin(2*pi*131*t);
d=sin(2*pi*147*t);
e=sin(2*pi*165*t);
f=sin(2*pi*175*t);
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
nol = [zeros(size(t))];
nada1=[c1,e1,e1,nol,c1,e1,e1,nol,c1,a,b,nol,nol,a,a,b,c1,a,b,nol,nol,...
    b,d1,d1,nol,b,d1,d1,nol,b,a,g,nol,nol,g,nol,g,nol,a,b,d1,c1,b,a,nol];
lagu=[nada1];
sound(lagu,Fs);
%wavwrite(lagu,Fs,'hareudang.wav') use this command for earlier than
%R2012b
audiowrite('hareudang.wav',lagu,Fs)