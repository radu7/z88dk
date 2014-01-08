
; ===============================================================
; Dec 2013
; ===============================================================
; 
; void *forward_list_remove_after(void *list_item)
;
; Remove item following list_item in the list, return removed item.
;
; ===============================================================

XLIB asm_forward_list_remove_after
XDEF asm_forward_list_pop_front

asm_forward_list_remove_after:
asm_forward_list_pop_front:

   ; enter : hl = void *list_item (remove item after this one)
   ;
   ; exit  : hl = void *item (item removed, 0 if none)
   ;         de = void *list_item
   ;         carry reset if no next item to remove (hl=0)
   ;         if carry set, z flag set if removed item was last in list
   ;
   ; uses  : af, de, hl
   
   ld e,(hl)
   inc hl
   ld d,(hl)
   dec hl
   
   ex de,hl                    ; de = void *list_item, hl = void *item
   
   ld a,h
   or l
   ret z                       ; if there is no next item in list
   
   ldi
   inc bc                      ; undo changes to bc
   ld a,(hl)
   ld (de),a                   ; list_item->next = item->next
   
   dec de
   dec hl
   
   ; de = void *list_item
   ; hl = void *item
   
   or (hl)                     ; tail change indicator for asm_forward_list_ext_*
   
   scf
   ret
