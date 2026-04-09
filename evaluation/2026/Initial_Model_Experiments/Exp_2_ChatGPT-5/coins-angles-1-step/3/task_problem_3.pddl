(define (problem shoebox_shape_to_number_rows)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    coin_triangle_blue - item
    coin_square_blue - item
    coin_hexagon_blue - item
    target_row_top_with_number3_triangle - target
    target_row_middle_with_number4_square - target
    target_row_bottom_with_number6_hexagon - target
  )
  (:init
    (in_init_container coin_triangle_blue)
    (in_init_container coin_square_blue)
    (in_init_container coin_hexagon_blue)
    (free target_row_top_with_number3_triangle)
    (free target_row_middle_with_number4_square)
    (free target_row_bottom_with_number6_hexagon)
  )
  (:goal
    (and
      ; init container becomes empty, each target is filled,
      ; and items are placed to the target whose row number equals their number of sides
      (not (in_init_container coin_triangle_blue))
      (not (in_init_container coin_square_blue))
      (not (in_init_container coin_hexagon_blue))
      (not (free target_row_top_with_number3_triangle))
      (not (free target_row_middle_with_number4_square))
      (not (free target_row_bottom_with_number6_hexagon))
      (in_target coin_triangle_blue target_row_top_with_number3_triangle)     ; triangle -> row "3"
      (in_target coin_square_blue target_row_middle_with_number4_square)      ; square  -> row "4"
      (in_target coin_hexagon_blue target_row_bottom_with_number6_hexagon)    ; hexagon -> row "6"
    )
  )
)
; Plan:
; move_to_target coin_triangle_blue target_row_top_with_number3_triangle
; move_to_target coin_square_blue target_row_middle_with_number4_square
; move_to_target coin_hexagon_blue target_row_bottom_with_number6_hexagon

; Task goal/comment:
; Three blue-shape coins (triangle, square/diamond, hexagon) start in the left init slot area.
; Each empty circular target on the right corresponds to the row labeled by a number (3,4,6) and a reference shape.
; Place each coin into the target in the row whose number equals the coin’s number of sides.

; Object identification:
; - Movable items: coin_triangle_blue, coin_square_blue (diamond orientation), coin_hexagon_blue.
; - Targets (empty wells): top (row with number 3 & triangle), middle (row with number 4 & square), bottom (row with number 6 & hexagon).
; - Fixed: initial_container (left slot area). Other printed discs (numbers/shapes) are fixed references and not targets.

; Verification summary:
; Total number of objects: 7
; Objects: initial_container, coin_triangle_blue, coin_square_blue, coin_hexagon_blue, target_row_top_with_number3_triangle, target_row_middle_with_number4_square, target_row_bottom_with_number6_hexagon
; No uncertainties or partially visible items detected.