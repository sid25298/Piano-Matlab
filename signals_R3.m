clc
clear all
Fs=8000;
amp=100;
Ts=1/Fs;
duration=input('Enter duration of each note');
t=[0:Ts:duration];
c=240;
d=270;
e=300;
f=320;
g=360;
a=400;
b=450;
h=480;%c2
str='a';
disp('Start pressing keys from a-h and press p to exit');
while(str~='p')
    str=getkey;
    if str=='a'
        note=a;
    elseif str=='b'
        note=b;
    elseif str=='c'
        note=c;
    elseif str=='d'
        note=d;
    elseif str=='e'
        note=e;
    elseif str=='f'
        note=f;
    elseif str=='g'
        note=g;
    elseif str=='h'
        note=h; 
    else
        note=0;
    end
    x=sin(2*pi*note*t);
    soundsc(x,Fs)
end

