unblank =: #~~:&' '
left_hook_unblank =: ~:&' '#[
take_ints =: #~(=<.)

leapcount =: +/@(1 _1 1 _1 * 4 100 400 4000 <.@%~-&1)
