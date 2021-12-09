NB. cola =: ".>readcsv 'cola.csv'
cola =: (cola=LF)".;._2 cola=:1!:1 < 'cola.txt'

NB. grow y starting at year x according to cola
grow =: 4 : '(|:,:0{"1 a),"1 |:,:}.*/\x,>:100%~1{"1 a=.cola{~(y i.~ 0{"1 cola)}.i.#cola'

grow2 =: 4 : 0
  a =: cola{~((y-1) i.~ 0{"1 cola)}.i.#cola
  b =: x,>:100%~1{"1 a
  c =: */\b
  d =: (|:,:0{"1 a)
)
