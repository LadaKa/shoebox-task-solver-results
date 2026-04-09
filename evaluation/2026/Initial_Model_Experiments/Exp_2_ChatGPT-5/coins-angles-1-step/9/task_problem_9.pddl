(define (problem shoebox_task_image_row-match)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    token_triangle_top - item
    token_polygon5_middle_uncertain - item
    token_slanted_quad_bottom_uncertain - item
    circle_target_top_right - target
    circle_target_middle_right - target
    circle_target_bottom_right - target
  )
  (:init
    (in_init_container token_triangle_top)
    (in_init_container token_polygon5_middle_uncertain)
    (in_init_container token_slanted_quad_bottom_uncertain)
    (free circle_target_top_right)
    (free circle_target_middle_right)
    (free circle_target_bottom_right)
  )
  (:goal
    (and
      (forall (?y - target) (not (free ?y)))
      (forall (?x - item) (not (in_init_container ?x)))
      (in_target token_triangle_top circle_target_top_right)
      (in_target token_polygon5_middle_uncertain circle_target_middle_right)
      (in_target token_slanted_quad_bottom_uncertain circle_target_bottom_right)
    )
  )
)

; Action plan (match-by-row position):
; move_to_target token_triangle_top circle_target_top_right
; move_to_target token_polygon5_middle_uncertain circle_target_middle_right
; move_to_target token_slanted_quad_bottom_uncertain circle_target_bottom_right

; Task goal: Fill all three empty rightmost circles; empty the initial container.
; Matching rule used: each left token goes to the empty circle in the same row (top/middle/bottom), as cued by the row-aligned numbers/shapes on the board.

; Verification summary:
; Total number of objects: 6
; Items: token_triangle_top, token_polygon5_middle_uncertain, token_slanted_quad_bottom_uncertain
; Targets: circle_target_top_right, circle_target_middle_right, circle_target_bottom_right
; Uncertainty: middle and bottom item shapes are not fully clear; positions are unambiguous and used for matching.