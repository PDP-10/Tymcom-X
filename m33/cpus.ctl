:LOGFILE CPUS.LOG
:PARAMETERS CREF
:TIME 600
:$MAIL=$FALSE
WATCH ALL ;This CTL file checks for COMPILE/LOAD errors
CORE
;
;The repeated SETPROCs are because LOGOUT deletes (JMS)nnnRPG.TMP
;
CTEST SETPROC MACRO=(SYS)MACRO
COMPILE\CREF\ @MONKL
CROSS
CTEST SETPROC MACRO=(SYS)MACRO
COMPILE\CREF\ @MONKS
CROSS
CTEST SETPROC MACRO=(SYS)MACRO
; COMPILE\CREF\ @MONKI
CROSS
CTEST SETPROC MACRO=(SYS)MACRO
; COMPILE\CREF\ @MONF3
CROSS
;
;Now check for undefined global symbols
;
CTEST SETPROC LOADER=(SYS)LOADER
LOAD @MONKS
CTEST SETPROC LOADER=(SYS)LOADER
LOAD @MONKL
CTEST SETPROC LOADER=(SYS)LOADER
; LOAD @MONKI
CTEST SETPROC LOADER=(SYS)LOADER
; LOAD @MONF3
;
DAYTIME
CORE
      