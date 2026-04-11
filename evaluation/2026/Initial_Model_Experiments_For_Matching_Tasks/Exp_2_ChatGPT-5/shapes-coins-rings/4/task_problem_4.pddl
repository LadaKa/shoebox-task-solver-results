(define (problem task_from_image_01)
  (:domain shoebox-simple)
  (:objects
    initial_tray - init_container
    token_circle_blue - item
    token_triangle_blue - item
    token_diamond_blue - item
    well_circle_row_top_center - target
    well_triangle_row_middle_center - target
    well_square_row_bottom_center - target
  )
  (:init
    (in_init_container token_circle_blue)
    (in_init_container token_triangle_blue)
    (in_init_container token_diamond_blue)
    (free well_circle_row_top_center)
    (free well_triangle_row_middle_center)
    (free well_square_row_bottom_center)
  )
  (:goal
    (and
      ; match-by-shape goal (diamond == square rotated)
      (in_target token_circle_blue well_circle_row_top_center)
      (in_target token_triangle_blue well_triangle_row_middle_center)
      (in_target token_diamond_blue well_square_row_bottom_center)
      ; container must be empty and all targets non-empty
      (not (in_init_container token_circle_blue))
      (not (in_init_container token_triangle_blue))
      (not (in_init_container token_diamond_blue))
      (not (free well_circle_row_top_center))
      (not (free well_triangle_row_middle_center))
      (not (free well_square_row_bottom_center))
    )
  )
)
; Task goal: Place each wooden token from the left tray into the center well of the matching row on the right.
; Matching property: by geometric shape printed on the token —
;   circle -> circle row (top), triangle -> triangle row (middle), diamond (a rotated square) -> square row (bottom).

; Plan:
; move_to_target token_circle_blue well_circle_row_top_center
; move_to_target token_triangle_blue well_triangle_row_middle_center
; move_to_target token_diamond_blue well_square_row_bottom_center

; Verification summary:
; Total number of objects: 7
; Objects: initial_tray, token_circle_blue, token_triangle_blue, token_diamond_blue, well_circle_row_top_center, well_triangle_row_middle_center, well_square_row_bottom_center
; No uncertainties or partially visible items.