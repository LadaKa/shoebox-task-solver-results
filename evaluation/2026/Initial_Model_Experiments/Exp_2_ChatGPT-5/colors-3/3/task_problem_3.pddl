(define (problem color-discs-to-labeled-holes)
  (:domain shoebox-simple)
  (:objects
    left_slots_container - init_container
    disc_red - item
    disc_yellow - item
    disc_blue - item
    hole_top_row_left_red_square - target
    hole_top_row_middle_yellow_square - target
    hole_top_row_right_blue_square - target
  )
  (:init
    (in_init_container disc_red)
    (in_init_container disc_yellow)
    (in_init_container disc_blue)
    (free hole_top_row_left_red_square)
    (free hole_top_row_middle_yellow_square)
    (free hole_top_row_right_blue_square)
  )
  (:goal
    (and
      ; color-matching rule encoded via specific item-to-target goals
      (in_target disc_red hole_top_row_left_red_square)
      (in_target disc_yellow hole_top_row_middle_yellow_square)
      (in_target disc_blue hole_top_row_right_blue_square)
      ; explicit emptiness/occupancy conditions
      (not (in_init_container disc_red))
      (not (in_init_container disc_yellow))
      (not (in_init_container disc_blue))
      (not (free hole_top_row_left_red_square))
      (not (free hole_top_row_middle_yellow_square))
      (not (free hole_top_row_right_blue_square))
    )
  )
)
; Plan (color match: each disc goes to the hole under the square of the same color)
; move_to_target disc_red hole_top_row_left_red_square
; move_to_target disc_yellow hole_top_row_middle_yellow_square
; move_to_target disc_blue hole_top_row_right_blue_square

; Task goal: Empty the left slots container and place each colored disc into the top-row circular hole labeled with the matching colored square (red, yellow, blue), one disc per hole.

; Object identification:
; - init container: left_slots_container (the slotted area on the left where discs start)
; - items: disc_red, disc_yellow, disc_blue (wooden colored discs)
; - targets: three top-row circular holes on the right, each labeled by a colored square above it:
;   hole_top_row_left_red_square, hole_top_row_middle_yellow_square, hole_top_row_right_blue_square

; Verification summary:
; - Total number of objects: 7
; - Objects: left_slots_container, disc_red, disc_yellow, disc_blue,
;            hole_top_row_left_red_square, hole_top_row_middle_yellow_square, hole_top_row_right_blue_square
; - Uncertainty: none; discs are partially inserted but clearly visible and identifiable.