:LOGFILE DDT.LOG
CTEST SETPROC MACRO=(SYS)MACRO,LOADER=(SYS)LOADER
DELETE EDDT.REL,DDT.REL
COMPILE EDDT=EDDT+DDT
LOAD /SAVE:DDT DDT,%S SDDT,UUOTYM,JOBDAT
LOAD /SAVE:FILDDT FILDDT=FILDDT+DDT
LOAD /SAVE:FRMDDT FRMDDT=FRMDDT+DDT
GET DDT		;Need to unlock the symbol table
DDT
UUOTYM:
EXITX
SAVE DDT
DELETE SDDT.REL,FILDDT.REL,FRMDDT.REL
DIRECT @DDTDIR
 