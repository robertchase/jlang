   NB. brute force difference between 4-cubes
   G4 =: 4 : '(|x-y)*+/*/"1(x^i.4),.y^|.i.4'
   NB. with hook
   G4 =: 4 : '(|x-y)*+/*/"1(x&^,.y&^@|.)i.4'
