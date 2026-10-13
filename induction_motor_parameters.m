%fichier data commande vectorielle direct MAS
clc;clear all;
Pn=5000;
U=380;
I=10.5;
p=2;
rs=0.435;
rr=0.816;
ls=0.071;
lr=0.071;
lm=0.069;
j=0.0056;
fr=0.0015;
m=21;

tr=lr/rr;
f=50;
t=1/f;
T_dent=t/m;
T=[2/3 -1/3 -1/3 ; -1/3 2/3 -1/3;-1/3 -1/3 2/3];

sig=1-(lm^2/(ls*lr));
ws=2*pi*f;
sig=1-(lm^2/(ls*lr));tr=lr/rr;ts=ls/rs;rt1=1/(sig*ts);

rt2=tr*sig;rt3=1-sig;Rt=rt1+(rt3/rt2);

A1=[-1/(ts*sig) 0 lm/(ls*tr*sig) 0;0 -1/(ts*sig) 0 lm/(ls*tr*sig);lm/(lr*ts*sig) 0 -1/(tr*sig) 0; 0 lm/(lr*ts*sig) 0 -1/(tr*sig)];
A2=[0 1 0 0; -1 0 0 0;0 0 0 1;0 0 -1 0];
A3=[0 1/sig 0 lm/(ls*sig);-1/sig 0 -lm/(ls*sig) 0;0 -lm/(lr*sig) 0 -lm*lm/(ls*lr*sig); lm/(lr*sig) 0 lm*lm/(ls*lr*sig) 0];
C=[rs 0 0;0 rs 0];
D=[0 -sig*ls 0; sig*ls 0 lm/lr];
R=[rs 0 0 0; 0 rs 0 0; 0 0 rr 0; 0 0 0 rr];
L=[ls 0 lm 0;0 ls 0 lm;lm 0 lr 0;0 lm 0 lr];
B=[1/(ls*sig) 0 0 0;0 1/(ls*sig) 0 0; -lm/(ls*lr*sig) 0 0 0;0 -lm/(ls*lr*sig) 0 0 ];
%parametre regulateurs
%regulateur de courant
Rou=200;
Ps=rs/(sig*ls);
KiI=2*(Rou^2)*ls*sig
KpI=(2*Rou-Ps)*sig*ls
%Regulateur de flux
Pr=rr/lr;
Rouf=50;
KiF=2*(Rouf^2)*lr/(lm*rr)
KpF=(2*Rouf-Pr)*lr/(lm*rr)
%regulateur de vitesse
Pm=fr/j;
RouV=0.95;
KiV=2*(RouV^2)*j/p
KpV=(2*RouV-Pm)*j/p;
KpV=12*KpV