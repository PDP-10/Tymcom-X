 "\PATCH #3 CTYLOG.PAT 12-Dec-86 JMS\
 "\Log CTY output in buffer.  KL ONLY!\
COMMOD:
CHNUNC-1000/CTYBUF:
CHNUNE+1/CTYPTR:440700,,0
CTYPTR+1/CTYLOG:
SCNSER:
CTYLOG+0/PUSH P,T1
CTYLOG+1/MOVE T1,CTYPTR
CTYLOG+2/IBP T1
CTYLOG+3/TRZ T1,777000
CTYLOG+4/MOVEM T1,CTYPTR
CTYLOG+5/ADDI T1,CTYBUF
CTYLOG+6/DPB T3,T1
CTYLOG+7/POP P,T1
CTYLOG+10/MOVEM T3,SPCTRY
CTYLOG+11/JRST CTYCHR+1
CTYCHR/JRST CTYLOG
COMMON:
CONFIG+107[CTYPTR,,CTYBUF
PATMAP[Q+040000000000
     