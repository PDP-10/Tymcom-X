 "\Patch #10 DIETYO.PAT 9-May-86 JMS \
 "\Make INFO stopcodes like BADSAT and WRTSAT not cause recursion in DIE\
ERRCON:
PAT+0/MOVEI U,SCNLDB
PAT+1/PUSHJ P,CCTYO
PAT+2/JRST UPOPJ
DIETYO+1/JRST PAT
PAT+3/PAT:
SCNSER:
CCTYO+3/CAIL T1,480.
 "\Update the KEY in JOB and DEBUG stopcodes so base won't get unhappy\
PAT+0/PUSH P,T1
PAT+1/MOVE T1,@KEYSET-1
PAT+2/XCT KEYSET
PAT+3/POP P,T1
PAT+4/JRST CTYTYO
CTYWAT/JRST PAT
PAT+5/PAT:
PATSIZ/PAT
COMMON:
PATMAP[Q+000200000000


    