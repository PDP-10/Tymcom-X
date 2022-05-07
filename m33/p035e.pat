 "\ Patch #0 to change message typed out on parity error. \
PICON: T
PICLIT+55+CPUTYP-2/"/ erro/
.+1/"/r.
T/
.+1/"/ype H/
.+1/"/C or /
.+1/"/ST 14/
.+1/"/7 to /
.+1/"/save /
.+1/"/this /
.+1/"/crash/
.+1/"/.
/
S
 "\ Set up the MSGLOG byte pointer when memory has been cleared. \
SCNSER:
MSGIN1+10/JRST MSGINI+10

PATMAP[400000,,0

 "\ LUD.PAT, 19-Sep-89, patch #1 for P035/E, JMS \
 "\ Fix problem in following overflow blocks in the LUD \
FILUUO:
USRUSI+5/MOVEI T2,1(T2)
BLKLNK+4/SOJL P1,LUDER1
BLKLNK+5/SOJA T2,USRUSI
COMMON:
PATMAP[Q+200000,,0
CONFIG+1T/ CONFIG+2T/"/-1/
