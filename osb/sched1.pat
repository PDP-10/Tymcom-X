 "\Patch #13 SCHED1.PAT 25-Feb-85 WRS, updated 15-Jul-86 JMS \
 "\Use SCHED1.RUN to patch the running monitor.\

SCHED1:
"/    redistribute job size bias    /
QSTAB[32.,,-PQ1
196.,,-PQ2
"/    set max quantum to 30 tics    /
QQSTBL+2/QQYTTY
QQYTTY
"/    disk IO at end of queue 2 with small quantum    /
QSSW/EQFIX
JFYS12,,-PQ2
QWSW/EQFIX
JFYS12,,-PQ2
ONCE:
"/    set TTY satisfied quantum to 30 tics instead of 6 tics  /
ONCSTT<ONCSTT+1000>MOVEM T1,QQYTTYW
./IDIVI T1,5
.-1/MOVEM T1,QQYTTY

COMMON:
PATMAP[Q+000020000000
CONFIG+2T/
  