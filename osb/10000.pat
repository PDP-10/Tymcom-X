common:
pat+0!0
pat+1!0
pat+2!0
pat+3!0
pat+4!0
pat+5!0
pat+6!rdpi pists
pat+7!setzb 17,pat+0
pat+10!movem 17,pat+1
pat+11!move 17,pat+2
pat+12!movem 17,pat+2
pat+13!hrli 17,pat+3
pat+14!hrri 17,pat+4
pat+15!blt 17,pat+4
pat+16!skip pat+5
pat+17!jrst pists1+1
pists1!jrst pat+6
pat+20!pat:
patsiz!pat
   