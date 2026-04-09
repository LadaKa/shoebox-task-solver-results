(define (problem shapes_on_pegs_match)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    ring_circle_blue - item
    ring_triangle_blue - item
    ring_square_blue - item
    peg_left_over_circle - target
    peg_middle_over_triangle - target
    peg_right_over_square - target
  )
  (:init
    (in_init_container ring_circle_blue)
    (in_init_container ring_triangle_blue)
    (in_init_container ring_square_blue)
    (free peg_left_over_circle)
    (free peg_middle_over_triangle)
    (free peg_right_over_square)
  )
  (:goal
    (and
      ; shape-matching requirement: each ring goes on the peg above the card with the same shape
      (in_target ring_circle_blue peg_left_over_circle)
      (in_target ring_triangle_blue peg_middle_over_triangle)
      (in_target ring_square_blue peg_right_over_square)
      ; global task conditions: all targets occupied and init container empty
      (forall (?y - target) (not (free ?y)))
      (forall (?x - item) (not (in_init_container ?x)))
    )
  )
)
; Action plan (left-to-right by matching shape on card):
; move_to_target ring_circle_blue peg_left_over_circle
; move_to_target ring_triangle_blue peg_middle_over_triangle
; move_to_target ring_square_blue peg_right_over_square

; Task goal: place each blue hollow ring onto the peg positioned above the card showing the same blue shape (circle, triangle, square).
; Object identification: items = 3 blue rings (circle, triangle, square) initially in the bowl (treated as initial_container);
; targets = 3 wooden pegs aligned left-to-right above the corresponding shape cards.

; Verification summary:
; Total number of objects: 7
; Objects: initial_container, ring_circle_blue, ring_triangle_blue, ring_square_blue, peg_left_over_circle, peg_middle_over_triangle, peg_right_over_square
; No uncertainties or partially visible task objects detected.