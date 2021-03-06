PJOB
DAYTIME
;   When CRSHID runs at startup, it reads the file (SYS)CRSHID.DAT to
;   to determine which directory to notify.  This is (M33:33)NOTICE.*
;   on all systems (except B39 which is stuck in BUBBNET).

;Step 1: Copy list of B39 crashes from BUBBNET to F33
;*; RUN (MAIL)RDIST;(M33)NOTICE.39/MASTER:39/HOST:33/VERBOSE

;Step 2: Try to minimize differences between (M33:33) and (M33:32)
RUN (XEXEC)RDIST;(M33)NOTICE.*/MASTER:33/HOST:32
    