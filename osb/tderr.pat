 "\Patch #1 for P035/B - TDERR.PAT 9-Feb-86 JMS \
 "\Fix 'serious restart error while writing to HOM pages' on blocks disks\
MONBTS:
PMDST1+0/MOVEI T2,200
PMDST1+2/LDB T2,UNYBPT
PMDST1+4/LDB T2,UNYBPY
COMMON:
PATMAP[200000000000
CONFIG+2T/"/-1/
   