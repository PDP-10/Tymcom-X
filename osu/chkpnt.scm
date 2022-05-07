File 1)	DSK:CHKPNT.303	created: 1700 19-OCT-82
File 2)	DSK:CHKPNT.MAC	created: 1733 10-FEB-87

1)1	TYMREL==3	;TYM RELEASE NO.
1)	JOBVER==137
****
2)1	TYMREL==4	;TYM RELEASE NO.
2)	JOBVER==137
**************
1)14		JRST RRSET
****
2)14		MOVEI T2,^D125	;Delay 1/8 second
2)		HIBER T2,	; to give the 3674 controller
2)		  JFCL		; a chance to react
2)		JRST RRSET
**************
