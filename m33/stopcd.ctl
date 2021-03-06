:LOGFILE STOPCD.LOG

;Find STOPCDs with names (have a parenthesis after the word "STOPCD")
TYPE STOPCN.TEC
MUNG MONLOG,STOPCN,STOPCD.NAM

;Find all occurances of "STOPCD" not in a comment
TYPE STOPCD.TEC
MUNG MONLOG,STOPCD,STOPCD.ALL

;Convert to format suitable for sorting
TYPE STOPST.TEC
MUNG STOPST
R PIP
STOPCD.SRT_STOPCD.SRT/W
SORT!
STOPCD.SRT=STOPCD.SRT/R80/K17.6

DIRECT STOPCD.*

     