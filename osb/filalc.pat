common:
filalc+3/jrst pat
filalc+7/jfcl
filalc+10/jfcl
pat!addi t1,m
pat+1!movem t1,evasiz
pat+2!pushj p,evahi
pat+3!jrst filalc
pat+4!jrst filalc+4
pat+5!pat:
patsiz!pat
  