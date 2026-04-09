(define (problem shoebox_shapes_on_pegs)
  (:domain shoebox-simple)
  (:objects
    initial_bowl - init_container
    ring_circle_blue - item
    frame_triangle_blue - item
    frame_square_blue - item
    peg_circle_left - target
    peg_triangle_middle - target
    peg_square_right - target
  )
  (:init
    (in_init_container ring_circle_blue)
    (in_init_container frame_triangle_blue)
    (in_init_container frame_square_blue)
    (free peg_circle_left)
    (free peg_triangle_middle)
    (free peg_square_right)
  )
  (:goal
    (and
      ; shape-matching placements
      (in_target ring_circle_blue peg_circle_left)
      (in_target frame_triangle_blue peg_triangle_middle)
      (in_target frame_square_blue peg_square_right)
      ; completion conditions: all targets occupied, init container empty
      (forall (?y - target) (not (free ?y)))
      (forall (?x - item) (not (in_init_container ?x)))
    )
  )
)
; Plan (order arbitrary):
; move_to_target ring_circle_blue peg_circle_left
; move_to_target frame_triangle_blue peg_triangle_middle
; move_to_target frame_square_blue peg_square_right

; Task goal: Move each blue outline shape from the bowl (init container) to the peg above the card with the same printed shape (circle, triangle, square). Each target peg holds exactly one item, and the bowl is empty at the end.

; Verification summary:
; Total number of task objects: 7
; Objects listed: initial_bowl; ring_circle_blue; frame_triangle_blue; frame_square_blue; peg_circle_left; peg_triangle_middle; peg_square_right
; Note: a fourth unlabeled wooden peg is visible at the far right but has no matching shape card; it is treated as non-target background and excluded from the target set. No uncertainties or partially visible task items.