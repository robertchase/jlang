NB. check for leap year CCYY
isleap =: 3 : '(0~:y)*2>7 1 i.|:#.|:0=400 100 4 |/y' NB. special case for year 0

NB. number of days from start of a year to a day in that year CCYYMMDD
diy =: 3 : '((m>2)*>:-.isleap<.y%10000)-~(100|y)+(<:m=.100|<.y%100){+/\0,(7$31 30),5$31 30'

NB. number of days in month CCYYMM
dim =: 3 : '((m=2)*>:-.isleap y<.@%100)-~(<:m=.100|y){(7$31 30),5$31 30'

NB. days since year zero CCYYMMDD (not accurate for days before gregorian calendar)
base =: 3 : '(diy y)+(+/"1 isleap >:i."0<:year)+365*year=.y<.@%10000'

NB. age in days
DOB =: 19580915
age =: 3 : '(base +/10000 100 1*x:0 1 2{6!:0'''')-base >(0=#y){y;DOB'
