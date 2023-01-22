unblank =: #~~:&' '
left_hook_unblank =: ~:&' '#[
take_ints =: #~(=<.)
primes =: 3 : '(#~ 1&p:)>:i.y'  NB. up to y
is_palindrome =: 3 : '*/(=|.)":y'

leapcount =: +/@(1 _1 1 _1 * 4 100 400 4000 <.@%~-&1)
