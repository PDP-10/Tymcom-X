 "\ Patch #5 for P035/D - TTYDMP.PAT   15-Apr-88  JMS \
 "\ Get a crash dump on TTYZNE stopcodes.  Don't loop on TTYBMT stopcodes. \
SCNSER:
TTYZNE/	PUSHJ P,DIE
.+2[400000+S$DEBUG
.[Q
.[
TTYBMT/Q+2/Q-SCNIN1+SCNIN2
./
COMMON:
PATMAP[Q+010000000000
