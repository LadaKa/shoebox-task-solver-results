(define (problem shape_match_three-holes_center)
  (:domain shoebox-simple)
  (:objects
    initial_tray_with_slots - init_container
    token_circle_blue - item
    token_triangle_blue - item
    token_diamond_blue - item
    hole_center_top_circle_row - target
    hole_center_middle_triangle_row - target
    hole_center_bottom_square_row - target
  )
  (:init
    (in_init_container token_circle_blue)
    (in_init_container token_triangle_blue)
    (in_init_container token_diamond_blue)
    (free hole_center_top_circle_row)
    (free hole_center_middle_triangle_row)
    (free hole_center_bottom_square_row)
  )
  (:goal
    (and
      ; shape/row-based assignment inferred from the board:
      ; top row framed by circles, middle by triangles, bottom by squares (diamond = rotated square)
      (in_target token_circle_blue hole_center_top_circle_row)
      (in_target token_triangle_blue hole_center_middle_triangle_row)
      (in_target token_diamond_blue hole_center_bottom_square_row)
      ; container empty and all targets occupied
      (not (in_init_container token_circle_blue))
      (not (in_init_container token_triangle_blue))
      (not (in_init_container token_diamond_blue))
      (not (free hole_center_top_circle_row))
      (not (free hole_center_middle_triangle_row))
      (not (free hole_center_bottom_square_row))
    )
  )
)
; Plan (one item per target, matching by row/shape cues):
; move_to_target token_circle_blue hole_center_top_circle_row
; move_to_target token_triangle_blue hole_center_middle_triangle_row
; move_to_target token_diamond_blue hole_center_bottom_square_row

; Task goal: place each round token from the left tray into the central column of circular holes,
; choosing the row whose side frames indicate the same shape (circle, triangle, square/diamond).

; Verification summary:
; Total number of objects: 7
; Objects:
; - init_container: initial_tray_with_slots
; - items: token_circle_blue, token_triangle_blue, token_diamond_blue
; - targets: hole_center_top_circle_row, hole_center_middle_triangle_row, hole_center_bottom_square_row
; All listed objects are clearly visible; none are uncertain or only partially visible.