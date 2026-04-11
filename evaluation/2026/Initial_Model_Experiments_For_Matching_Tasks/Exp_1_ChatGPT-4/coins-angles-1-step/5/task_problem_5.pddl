(define (problem shoebox_task)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    piece_triangle - item
    piece_pentagon - item
    piece_rhombus - item
    slot_triangle - target
    slot_pentagon - target
    slot_rhombus - target
  )
  (:init
    (in_init_container piece_triangle)
    (in_init_container piece_pentagon)
    (in_init_container piece_rhombus)
    (free slot_triangle)
    (free slot_pentagon)
    (free slot_rhombus)
  )
  (:goal
    (and
      (in_target piece_triangle slot_triangle)
      (in_target piece_pentagon slot_pentagon)
      (in_target piece_rhombus slot_rhombus)
    )
  )
)

; move_to_target piece_triangle slot_triangle
; move_to_target piece_pentagon slot_pentagon
; move_to_target piece_rhombus slot_rhombus

; Verification summary:
; Total number of objects: 6
; Objects: piece_triangle, piece_pentagon, piece_rhombus, slot_triangle, slot_pentagon, slot_rhombus
; No uncertainties or partially visible items

; Task goal: Match each piece with the corresponding shaped slot.
; The task requires moving triangular, pentagonal, and rhombus pieces from the initial container to their matching slots.