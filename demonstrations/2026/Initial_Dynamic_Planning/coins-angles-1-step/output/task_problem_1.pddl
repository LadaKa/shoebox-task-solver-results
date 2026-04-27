(define (problem problem_image_task)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    token_triangle - item
    token_pentagon - item
    token_rhombus - item
    slot_triangle - target
    slot_square - target
    slot_pentagon - target
  )
  (:init
    (in_init_container token_pentagon)
    (in_init_container token_rhombus)
    (free slot_square)
    (free slot_pentagon)
    (in_target token_triangle slot_triangle)
  )
  (:goal
    (and
      (in_target token_triangle slot_triangle)
      (in_target token_pentagon slot_pentagon)
      (in_target token_rhombus slot_square)
    )
  )
)
; move_to_target token_pentagon slot_pentagon
; move_to_target token_rhombus slot_square

; Verification summary:
; Total number of objects: 6
; Objects: 3 tokens (token_triangle, token_pentagon, token_rhombus), 3 slots (slot_triangle, slot_square, slot_pentagon)
; No uncertainties or partially visible items

; Task goal: Match tokens with their corresponding slots based on shape.