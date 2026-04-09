(define (problem shoebox_from_image_rows_01)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    token_triangle_row_top - item
    token_pentagon_row_middle - item
    token_parallelogram_row_bottom - item
    cup_row_top_right - target
    cup_row_middle_right - target
    cup_row_bottom_right - target
  )
  (:init
    (in_init_container token_triangle_row_top)
    (in_init_container token_pentagon_row_middle)
    (in_init_container token_parallelogram_row_bottom)
    (free cup_row_top_right)
    (free cup_row_middle_right)
    (free cup_row_bottom_right)
  )
  (:goal
    (and
      ; property-based goal: each item goes to the cup on the same row (top/middle/bottom)
      (in_target token_triangle_row_top cup_row_top_right)
      (in_target token_pentagon_row_middle cup_row_middle_right)
      (in_target token_parallelogram_row_bottom cup_row_bottom_right)
      ; global goals: all targets non-empty and init_container empty
      (forall (?y - target) (not (free ?y)))
      (forall (?x - item) (not (in_init_container ?x)))
    )
  )
)
; Task goal: Move each left-row token into the empty cup on the same row (row position is the matching property).
; Plan:
; move_to_target token_triangle_row_top cup_row_top_right
; move_to_target token_pentagon_row_middle cup_row_middle_right
; move_to_target token_parallelogram_row_bottom cup_row_bottom_right
; Verification summary:
; Total number of objects: 7
; Objects: initial_container, token_triangle_row_top, token_pentagon_row_middle, token_parallelogram_row_bottom, cup_row_top_right, cup_row_middle_right, cup_row_bottom_right
; All objects clearly visible; none uncertain or partially visible.