cola =: ".;._2 [ 1!:1 < 'cola.txt'

NB. grow x starting at year y according to cola
grow =: 4 : '(0{"1 a),"0}.*/\x,>:100%~1{"1 a=.cola}.~y i.~0{"1 cola'
