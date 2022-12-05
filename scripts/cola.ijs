cola =: ".;._2 [ 1!:1 < 'cola.txt'

NB. grow x starting at year y according to cola
grow =: 4 : '(0{"1 a),"0}.*/\x,>:100%~1{"1 a=.(}.~y i.~0&{"1) cola'

NB. grow using fork
grow2 =: 4 : '(0&{"1 ,"0 }.@(*/\)@(x,1+100%~1&{"1))(}.~ y i.~0&{"1)cola'
