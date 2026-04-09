(define (problem shoebox_task_shapes_to_numbers)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    token_triangle_blue - item
    token_square_blue - item
    token_hexagon_blue - item
    hole_right_top_number3 - target
    hole_right_middle_number4 - target
    hole_right_bottom_number6 - target
  )
  (:init
    (in_init_container token_triangle_blue)
    (in_init_container token_square_blue)
    (in_init_container token_hexagon_blue)
    (free hole_right_top_number3)
    (free hole_right_middle_number4)
    (free hole_right_bottom_number6)
  )
  (:goal
    (and
      ; matching rule: place each polygon into the hole aligned with the number of its sides
      (in_target token_triangle_blue hole_right_top_number3)    ; 3 sides -> 3
      (in_target token_square_blue hole_right_middle_number4)   ; 4 sides -> 4
      (in_target token_hexagon_blue hole_right_bottom_number6)  ; 6 sides -> 6
      ; container empty and every target non-empty
      (not (in_init_container token_triangle_blue))
      (not (in_init_container token_square_blue))
      (not (in_init_container token_hexagon_blue))
      (not (free hole_right_top_number3))
      (not (free hole_right_middle_number4))
      (not (free hole_right_bottom_number6))
    )
  )
)

; Plan (one object per target, left-to-right, top-to-bottom)
; move_to_target token_triangle_blue hole_right_top_number3
; move_to_target token_square_blue hole_right_middle_number4
; move_to_target token_hexagon_blue hole_right_bottom_number6

; Task goal/comment:
; Put each blue shape token into the empty hole in the same row as the number
; that equals the shape’s number of sides: triangle->3, square/diamond->4, hexagon->6.

; Verification summary:
; Total number of objects: 7
; Objects: initial_container, token_triangle_blue, token_square_blue, token_hexagon_blue,
;          hole_right_top_number3, hole_right_middle_number4, hole_right_bottom_number6
; All three items and three empty target holes are clearly visible; no uncertainties.