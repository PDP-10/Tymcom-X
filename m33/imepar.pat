 "\ Patch #3 for P035/D - IMEPAR.PAT 24-Mar-88 JMS \
 "\ Fix IME in the middle of PARITY ERROR caused by AR/ARX being enabled. \
PICON:
 "\ AR/ARX parity errors are reported as page fault types 36 and 37 \
PGFAIL+1/JRST PAT+1
PAT+0/360500,,%UPT+UPTPFW
PAT+1/LDB 16,PAT+0
PAT+2/CAIE 16,36
PAT+3/CAIN 16,37
PAT+4/JRST PAT+7
PAT+5/MOVE 16,%UPT+UPTOPP
PAT+6/JRST PGFAIL+2
 "\ Act like an APRINT \
PAT+7/ARX:CONI APR,SAVAPR
PAT+10/MOVE 16,@%UPT+UPTACP
PAT+11/DMOVEM T1,SAVT1
PAT+12/MOVE T1,%UPT+UPTOPP
PAT+13/JRST APRPR1+1
 "\ Watch out for page fault when touching word with bad parity \
%UPS<%UPS:
APRER1+10/JRST PAT+14
PAT+14/MOVEI T3,PAT+17
PAT+15/EXCH T3,%UPT+UPTNPP
PAT+16/MOVE P3,%UPS(T2)
PAT+17/MOVEM T3,%UPT+UPTNPP
PAT+20/JRST APRER1+11
PAT+21/PAT:
PATSIZ/PAT
 "\ Type SAVAPR, SAVERA, and SBUS diags after memory scan \
APRER2+10/XCT APRFAT
APRER3-2/XCT APRFAT
COMMON:
PATMAP[Q+040000000000

 "\ Patch #4 for P035/D - IMEPAR.PAT (2nd version) 29-Mar-88 JMS \
 "\ Die with CPU stopcode AR.ARX when AR/ARX errors occur. \
 "\ The first version of this patch caused "spurious parity error" and marked \
 "\ several pages bad (all of the unlucky user's core image). \
PICON:
ARX+2/MOVEM P,PAT
ARX+3/MOVEI P,PAT
ARX+4/AR.ARX:XCT PAT+2
PAT+2/PUSHJ P,DIE
PAT+3/"/AR.ARX/
PAT+4/S$CPU,,0
PAT+5/PAT:
PATSIZ/PAT

COMMON:
PATMAP[Q+020000000000

