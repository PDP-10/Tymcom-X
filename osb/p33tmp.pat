Temporary patches to the P034/P33 monitor.
26XP33 has #1 and 2.
24XP33 has #1, 3, and 4.
F3XP33, 62XP33, 95XP33 have #4.
KLXP33 has #1, 2, 4.
KIXP33 has #1, 2, 3, 4.

Patch #1 (200000) fix RSVNSP so the system does not hang when a new Supervisor
takes over (message type 5).  This is in the sources.
	SCNSER$:
	RCVNSP+1/   POPJ P,0   AOJA P4,SCNIN1
	RCVNSP+6/   POPJ P,0   AOJA P4,SCNIN1

Patch #2 (100000) don't output TTYZNE when leave-deferred-echo (message type 15)
comes in on a line that has unechoed typeahead.  Use nonbuffered output routine
for INFO/EVENT stopcodes.
	SCNSER$:
	LDEC+1/   JRST ZAPDFR   JFCL ZAPDFR
	ERRCON$:
	DIE2+4/   MOVEI T1,2   MOVEI T1,0
This patch is not needed on KI (if #3 is installed), and does not completely
solve the APRFAT crash when a KL does an INFO stopcode.

Patch #3 (040000) don't turn off paging when trying to save all AC blocks.
KI only, this is in the sources.
	COMMON$:
	SVSETS+5/   DATAO PAG,LITS+403  $Q[  100000,,400000   500000,,0
	SVSETS+10/  DATAO PAG,LITS+405  $Q[  200000,,400000   600000,,0
	SVSETS+16/  MOVE  P4,LITS+410   $Q[  1,,0   400000,,400000
KL only, this is in the sources.
	COMMON$:
	CPUSTS+50/   DATAO PAG,LITS+407(T1)   JFCL
	CPUSTS+56/   DATAO PAG,LITS+407(T2)   JFCL

Patch #4 (020000) calculate null time correctly.  Fixed in sources.
	CLOCK1$:
	INCTIM/   SKIPE J   SKIPN J

[End of (M33)P33TMP.PAT]
 