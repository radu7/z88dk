
; int wa_priority_queue_empty(wa_priority_queue_t *q)

XDEF wa_priority_queue_empty

LIB ba_priority_queue_empty

wa_priority_queue_empty:

   jp ba_priority_queue_empty

   INCLUDE "adt/wa_priority_queue/z80/asm_wa_priority_queue_empty.asm"
