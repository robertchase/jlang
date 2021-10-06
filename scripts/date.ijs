NB. check for leap year
NB. isleap =: 3 : '((0=400|y)+.0~:100|y)*.0=4|y'
NB. isleap =: 3 : '+./7 1=#.0=400 100 4|y'"0
NB. isleap =: 3 : '2>1 7 i.#.0=400 100 4|y'"0
NB. isleap =: 3 : '($y)$+./"1((s,2)$7 1)=#.0=(((s=.$,y),3)$400 100 4)|,y'
NB. isleap =: 3 : '($y)$2>7 1 i.#.0=((($,y),3)$400 100 4)|,y'
NB. isleap =: 3 : '2>7 1 i.|:#.|:0=400 100 4 |/y'
NB.
isleap =: 3 : '2>7 1 i.|:#.|:0=400 100 4 |/y'


diy =: 3 : 0
NB. number of days from start of a year to a day in that year CCYYMMDD
NB.
NB. (214*((M)-1)-3)/7 generates the sequence of cummulative month lengths:
NB.   0 31 61 92 122 153 183 214 245 275 306 336 367
NB.        ^^assumes february is 30 days         ^^correct overflow to "month 13"

seq =. >.&(7%~3-~214*-&1)
NB. assert. 0 31 61 92 122 153 183 214 245 275 306 336 367 = seq 1+i.13

NB. to which the day of month is added
NB. which is then adjusted for the length of february
a =. 0 100 100 #: y
y =. 0{"1 a
m =. 1{"1 a
d =. 2{"1 a
(d+seq m)-(m>2)*>:-.isleap y
)

NB. dim =: 3 : '((m=2)*>:-.isleap 0{"1 (0 100)#:y)-~(<:m=.1{"1 (0 100)#:y){(7$31 30),5$31 30'

dim =: 3 : 0
NB. number of days in month CCYYMM
a =. 0 100 #: y
y =. 0{"1 a
m =. 1{"1 a
days =. (7$31 30),5$31 30
NB. grab the day count for the month and adjust for leap year (if february)
(m{0,days)-(m=2)*>:-.isleap y
)

NB. days since year zero CCYYMMDD
base =: 3 : '(diy y)+(+/isleap i.year)+365*year=.0{"1 (0 10000)#:y'"0

NB. age in days
age =: 3 : '(base +/10000 100 1*x:0 1 2{6!:0'''')-base >(0=#y){y;19580915'
