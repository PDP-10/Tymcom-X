 "\PATCH #1 INSSIM.PAT 24-Oct-86 JMS\
 "\Fix typo in INSSIM (T3 should be T4)\
UUOCON:
INSIM1+2/JRST @SIMTBL(T4)

 "\Make BADSAT typeout not go off edge of paper\
ERRCON:
BUGTY1+31/PUSHJ P,PRT22A

COMMON:
PATMAP[200000000000
CONFIG+2T/"/37-1/
      