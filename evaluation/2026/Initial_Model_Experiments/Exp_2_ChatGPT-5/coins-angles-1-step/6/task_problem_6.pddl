(define (problem shoebox_shape_match_3_4_6)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    disc_triangle_blue - item
    disc_square_blue - item
    disc_hexagon_blue - item
    target_row_3_triangle_right - target
    target_row_4_square_right - target
    target_row_6_hexagon_right - target
  )
  (:init
    (in_init_container disc_triangle_blue)
    (in_init_container disc_square_blue)
    (in_init_container disc_hexagon_blue)
    (free target_row_3_triangle_right)
    (free target_row_4_square_right)
    (free target_row_6_hexagon_right)
  )
  (:goal
    (and
      ; Matching rule encoded in target names: place each shape into the rightmost pocket of the row whose number equals the shape’s number of sides (3→triangle, 4→square, 6→hexagon).
      (forall (?y - target) (not (free ?y)))            ; every target is filled
      (forall (?x - item) (not (in_init_container ?x))) ; init_container ends empty
      (in_target disc_triangle_blue target_row_3_triangle_right)
      (in_target disc_square_blue target_row_4_square_right)
      (in_target disc_hexagon_blue target_row_6_hexagon_right)
    )
  )
)

; Plan (shape-to-number-of-sides matching):
; move_to_target disc_triangle_blue target_row_3_triangle_right
; move_to_target disc_square_blue target_row_4_square_right
; move_to_target disc_hexagon_blue target_row_6_hexagon_right

; Task goal: Move each blue shape disc from the left init_container into the empty pocket on the right that is aligned with its row label (3, 4, 6), i.e., triangle→row 3, square→row 4, hexagon→row 6.

; Object identification:
; - init_container: initial_container (white box with left slots).
; - items (3): disc_triangle_blue (top-left disc), disc_hexagon_blue (middle-left disc, polygon inferred as hexagon), disc_square_blue (bottom-left disc, partly occluded).
; - targets (3, rightmost empty circular pockets): target_row_3_triangle_right (top), target_row_4_square_right (middle), target_row_6_hexagon_right (bottom).

; Verification summary:
; Total number of task objects: 7
; Objects: initial_container, disc_triangle_blue, disc_square_blue, disc_hexagon_blue, target_row_3_triangle_right, target_row_4_square_right, target_row_6_hexagon_right
; Notes: Two items are partially occluded by the slot; their identities (square, hexagon) are inferred from the row cues (numbers/shapes) but the items themselves are visible.