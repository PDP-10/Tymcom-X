:logfile rdist.log
:define $substitution=$true
sysno
daytime
run (xexec)minit
rdist *.*/master:33/host:74,32/check
copy rdist.log,rdist.out
mung findit,rdist.out
copy rdist.log,rdist.\$weekday\
rdist rdist.*/host:74,32,33
   