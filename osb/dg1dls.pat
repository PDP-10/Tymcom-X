"/ This is a patch to crash the system when it /
"/ is stuck at UUO level /
pat/ patt1:
pat+1/ pat:
clock1:
clkint+12/ jrst pat
pat/ movem t1,patt1
pat+1/ move t1,uptime
pat+2/ skipn thstim
pat+3/ movem t1,thstim
pat+4/ sub t1,thstim
pat+5/ caile t1,1000
pat+6/ jsr syscrs
pat+7/ move t1,patt1
pat+10/ jrst w,@ch7
pat+11/ pat:
patsiz/ pat
syssiz/ pat
