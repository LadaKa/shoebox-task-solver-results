(define (problem shoebox_shapes_match_3)
  (:domain shoebox-simple)
  (:objects
    bowl_left - init_container
    ring_circle_blue - item
    triangle_blue - item
    diamond_square_blue_rotated - item
    peg_circle_left - target
    peg_triangle_middle - target
    peg_square_right - target
  )
  (:init
    (in_init_container ring_circle_blue)
    (in_init_container triangle_blue)
    (in_init_container diamond_square_blue_rotated)
    (free peg_circle_left)
    (free peg_triangle_middle)
    (free peg_square_right)
  )
  (:goal
    (and
      ; shape-based matching (orientation ignored): circle→circle, triangle→triangle, square→square
      (in_target ring_circle_blue peg_circle_left)
      (in_target triangle_blue peg_triangle_middle)
      (in_target diamond_square_blue_rotated peg_square_right)
      ; container empty and all targets occupied
      (forall (?x - item) (not (in_init_container ?x)))
      (forall (?y - target) (not (free ?y)))
    )
  )
)
; Plan (shape-to-matching-peg):
; move_to_target ring_circle_blue peg_circle_left
; move_to_target triangle_blue peg_triangle_middle
; move_to_target diamond_square_blue_rotated peg_square_right

; Task goal: place each blue shape ring onto the peg marked with the same shape icon (circle, triangle, square). The square piece is a rotated diamond but matches the square icon by shape.
; Object identification:
; - bowl_left: the white round container holding all movable shapes initially.
; - Items: ring_circle_blue, triangle_blue, diamond_square_blue_rotated (rotated square).
; - Targets: three pegs above cards showing circle, triangle, and square icons (left, middle, right).
; Verification summary:
; - Total number of domain objects: 7 (1 init_container, 3 items, 3 targets)
; - Objects: bowl_left; ring_circle_blue, triangle_blue, diamond_square_blue_rotated; peg_circle_left, peg_triangle_middle, peg_square_right.
; - All listed items and targets are fully visible; no uncertainties.