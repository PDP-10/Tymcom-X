"/ Patch to save a history of the uuo-stack @ uuoknt /

uuocon: 

pat/stack:
stack+40/code:

code+0/movem 17,@%upt+uptacp
code+1/hrli 17,stack+10
code+2/hrri 17,stack
code+3/blt 17,stack+27
code+4/hrli 17,%upt+uptpdl
code+5/hrri 17,stack+30
code+6/blt 17,stack+36
code+7/move 17,uptime
code+10/movem stack+37
code+11/move 17,@%upt+uptacp
code+12/jrst uuoknt+1

code+13/pat:
patsiz/pat

uuoknt/jrst code
   