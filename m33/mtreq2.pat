 "\ MTREQ2.PAT 4-Oct-89 patch to catch when MTREQ goes to -2 \
PATCH2!PATCH:

PATCH!MTREQ2:
MTREQ2+0/PUSHJ P,DIE
MTREQ2+1/"/MTREQ2/
MTREQ2+2/S$INFO,,0
MTREQ2+3/MTREQ1:
MTREQ1+0/MOVE T1,MTREQ
MTREQ1+1/AOJGE T1,MTREQ1+5
MTREQ1+2/SETOM MTREQ
MTREQ1+3/SETOM MTAVAL
MTREQ1+4/XCT MTREQ2
MTREQ1+5/PUSHJ P,RPTSAT
MTREQ1+6/JRST MINUTE+10
MTREQ1+7/PATCH:0
MINUTE+7/JRST MTREQ1