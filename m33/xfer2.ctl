:LOGFILE XFER2
:TIME 300
;
; This CTL file copies non-monitor source and documentation files.
; SOURCE.ROL, BINARY.ROL are created from (M33:930).
;
INITIA
DAYTIM
R TELECOPY
REPLACE
UPDATE
(M33:*)SOURCE.ROL,(M33:34)SOURCE.ROL
(M33:*)BINARY.ROL,(M33:34)BINARY.ROL
QUIT
DAYTIM
R QUOLST
     