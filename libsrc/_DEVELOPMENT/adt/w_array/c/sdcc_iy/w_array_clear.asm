
; void w_array_clear(w_array_t *a)

XDEF w_array_clear

LIB b_array_clear

w_array_clear:

   jp b_array_clear

   INCLUDE "adt/w_array/z80/asm_w_array_clear.asm"
