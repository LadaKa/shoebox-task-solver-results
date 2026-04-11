(define (problem shoebox_problem)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    ring_blue - item
    triangle_blue - item
    square_blue - item
    card_circle - target
    card_triangle - target
    card_square - target
  )
  (:init
    (in_init_container ring_blue)
    (in_init_container triangle_blue)
    (in_init_container square_blue)
    (free card_circle)
    (free card_triangle)
    (free card_square)
  )
  (:goal
    (and
      (in_target ring_blue card_circle)
      (in_target triangle_blue card_triangle)
      (in_target square_blue card_square)
    )
  )
)

; move_to_target ring_blue card_circle
; move_to_target triangle_blue card_triangle
; move_to_target square_blue card_square

; Verification summary:
; Total number of objects: 6
; Objects: 3 items (ring_blue, triangle_blue, square_blue), 3 targets (card_circle, card_triangle, card_square)
; No uncertainties or partially visible items