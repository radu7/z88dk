
; size_t w_vector_capacity(w_vector_t *v)

XDEF w_vector_capacity

LIB w_array_capacity

w_vector_capacity:

   jp w_array_capacity

   INCLUDE "adt/w_vector/z80/asm_w_vector_capacity.asm"
