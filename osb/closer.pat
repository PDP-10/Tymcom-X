"/Patch to restore old F for PC.UIO restore/

iocss:

ttyini!move t1,ttyini+13
movem t1,ttyini+7
move t1,ttyini+14
movem t1,ttyini+10
push p,f
pushj p,waitio
jrst close3+1
jfcl
tlnn f,14600
jrst ucls3 1
jrst ucls3 2
pop p,t1
tlnn t1,14600
ucls3!jrst ttyini 7
close3!jrst ttyini

patmap[q+4
