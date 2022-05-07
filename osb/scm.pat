"/	SCM	implement Special Command Mode		28-Oct-83 WRS	/
"/	Run the RCM program for any unrecognized command if		/
"/	PVSCM (1B9) is set in JBTPRV(J).				/
COMCON:
PAT!NCMSCM:MOVE T3,JBTPRV(J)
TLNE T3,200
JRST NCMRES
JRST COMFN1
PAT:
NCMD+1/JRST NCMSCM
"/	Following additional code at RESRUN to return user AC1=command	/
COMCON:
PAT!RESRNP:PUSH P,T2
PUSHJ P,MAPUPS
POP P,%UPS+UPTUAC+1
JRST RESRUN+1
PAT:
RESRUN/JRST RESRNP
"/	Following to let SETPRV set the new bit				/
UUOCON:
PRVMSK!376377,,701600
