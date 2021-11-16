NB. the five number summary
MIN =: 3 : '{.sort y'
MAX =: 3 : '{:sort y'
MED =: 3 : '-:+/a{~(<.b),>.b=.<:-:>:#a=.sort y'
Q1 =: 3 : 'MED (<.-:#a){.a=.sort y'
Q2 =: 3 : 'MED (>.-:#a)}.a=.sort y'
