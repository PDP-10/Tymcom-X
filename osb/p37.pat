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

 "\PATCH #2 FILAMO.PAT 12-Dec-86 JMS\
 "\Move GETCBR to before GETATB to prevent FILAMO crashes\
FILFND:
DECRMV+3/PUSHJ P,GETCBR
DECRMV+4/PUSHJ P,GETATB
DECRMV+5/MOVE P2,T1

COMMON:
PATMAP[Q+100000000000

 "\PATCH #3 CTYLOG.PAT 12-Dec-86 JMS\
 "\Log CTY output in buffer.  KL ONLY!\

 "\PATCH #4 MAPSUP.PAT 27-Jan-87 CARL\
 "\Fix super map boundary errors when crossing a unit\
MAPIO:
MAPUS4+22/CAMGE M,UNIPPU(U)

COMMON:
PATMAP[Q+020000000000
    