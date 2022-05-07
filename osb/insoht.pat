"/Patch to log Core Page Number in INSOHT/
filio:
insoht+2/jrst pat
insoh1+11/jrst pat+1

pat!aos pat+11
pat+1!tlz t4,-1
pat+2!rot t4,-1
pat+3!skipge t4
pat+4!jrst pat+7
pat+5!hrlm pg,pat+12(t4)
pat+6!skipa
pat+7!hrrm pg,pat+12(t4)
pat+10!rot t4,1
pat+11!popj p,
pat+12!0
pat+13+ohtlen'2+2!pat:
patsiz/pat
