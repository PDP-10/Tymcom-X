"/Patch to not set up previous context F in CHKABT when ADRERR called/
"/PATCH TO CLEAR HANG BITS IN LH J IN MONHNG/

SCNSER:
MONHNG 3!JRST PAT 2
errcon:
adrerr!pushj p,pat
pat!move j,job
jrst chkabt 2
HRRZS J
POPJ P,
pat:
patsiz!pat
patmap[q+3
    