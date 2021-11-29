NB. five number summary
MIN =: 3 : '{.sort y'
MAX =: 3 : '{:sort y'
MED =: 3 : '-:+/a{~(<.b),>.b=.<:-:>:#a=.sort y'
Q1 =: 3 : 'MED (<.-:#a){.a=.sort y'
Q3 =: 3 : 'MED (>.-:#a)}.a=.sort y'
IQR =: 3 : '(Q3 y)-Q1 y'
FNS =: 3 : '(MIN y),(Q1 y),(MED y),(Q3 y),MAX y'

MEAN =: +/%#
VAR =: 3 : '(<:#y)%~+/*:y-MEAN y'
SD =: 3 : '%:VAR y'
