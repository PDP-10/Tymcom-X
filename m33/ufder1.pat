 "\Patch #7 - UFDER1.PAT   16-May-88 /JMS  \
 "\ Fix UFDER1 crashes when a file is deleted while setting "dumped" bit. \

FILUUO:
UFDER1/Q/UFDER2:
PAT+0/MOVE T1,ATBSTS(P2)
PAT+1/TRNE T1,ATPDEL
PAT+2/JRST UFDER1+2
PAT+3/XCT UFDER2
UFDER1/JRST PAT
PAT+4/PAT:
PATSIZ/PAT
COMMON:
PATMAP[Q+002000000000

  