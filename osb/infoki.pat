 "\ Patch #14 INFOKI.PAT 7-Aug-86 JMS KI-only! \
 "\ Don't turn off paging when saving all ACs for INFO stopcode \
 "\ This applies to KI-10 monitors from P034/P to P034/P33 \
COMMON:
SVSETS+5/[500000,,0
SVSETS+10/[600000,,0
SVSETS+16/[400000,,400000

PATMAP[Q+000010000000
CONFIG+2T/

     