
; void p_stack_clear(p_stack_t *s)

XDEF p_stack_clear

LIB p_forward_list_init

p_stack_clear:

   jp p_forward_list_init

   INCLUDE "adt/p_stack/z80/asm_p_stack_clear.asm"
