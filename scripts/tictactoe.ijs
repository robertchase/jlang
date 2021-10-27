NB. (i.!9) A. >:i.9
NB. 100000 A. >:i.9

NB. list last five moves
gl=:3 : '(5 9 $y)*(6+i.5)>/y'

NB. normalize to odd=1, even=_1 else 0
gm=:3 : '5 3 3$,(0~:y)*(_1*-.2|y)+2|y'

NB. check for win on horizontal x=1, or vertical x=2
gw=:4 : '(+/"1)3=|+/"x y'

NB. identity matrix
NB. id=:3 : 'z=/z=.>:i.y'
NB. idr=:3 : 'z=/|.z=.>:i.y'

NB. check for diagonal wins
gdw=:3 : '3=|+/@,"2 y*5 3 3$,z=/z=.>:i.3'
gdrw=:3 : '3=|+/@,"2 y*5 3 3$,z=/|.z=.>:i.3'

NB. first win
fw=: 3 : '6+1 i.~(1 gw a)+.(2 gw a)+.(gdw a)+.gdrw a=.gm gl y'
