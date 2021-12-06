cola =: ".>readcsv 'cola.csv'

NB. grow "y" starting at year "x" according to cola
grow =: 4 : '*/\x,>:100%~1{"1 cola{~(y i.~ 0{"1 cola)}.i.#cola'
