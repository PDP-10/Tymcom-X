"/Patch to fix character lossage @ SETOUT+1/
"/PATMAP value bit 3 = 020000,,000000/
SCNSER:
SETOUT/
PAT/SETOM MXMCNT
PAT+1/SETOM MULCNT
PAT+2/JRST SETOUT+1
SETOUT/JRST PAT
PAT+3/PAT:
PATSIZ/PAT

PATMAP/q+20000000000

CONFIGt/
CONFIG+1t/
CONFIG+2t/
CONFIG+3t/
CONFIG+4t/