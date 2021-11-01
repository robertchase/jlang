NB. (i.!9) A. >:i.9
NB. 100000 A. >:i.9

NB. list last five moves
lf=:3 : '((5,$y)$,y)*(6+i.5)>/y'

NB. normalize to odd=1, even=_1 else 0
oe=:3 : '(0~:y)*(_1*-.2|y)+2|y'

NB. reshape to 3x3
rs=:3 : '((}:$y),3 3)$,y'

NB. check for win on horizontal
hw=:3 : '(+/"1)3=|+/"1 y'

NB. check for win on vertical
vw=:3 : '(+/"1)3=|+/"2 y'

NB. check for diagonal wins
dw=:3 : '3=|+/@,"2 y*($y)$,z=/z=.>:i.3'

NB. check for reverse diagonal wins
rdw=:3 : '3=|+/@,"2 y*($y)$,z=/|.z=.>:i.3'

NB. first win
fw=: 3 : '(4<.1 i.~(hw a)+.(vw a)+.(rdw a)+.dw a=.rs oe l){l=.lf y'
