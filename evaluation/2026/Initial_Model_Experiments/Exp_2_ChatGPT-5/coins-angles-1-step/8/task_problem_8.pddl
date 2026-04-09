(define (problem shoebox_shapes_to_numbers_3_4_6)
  (:domain shoebox-simple)
  (:objects
    left_slots_container - init_container
    disc_triangle_blue - item
    disc_quadrilateral_blue - item
    disc_hexagon_blue - item
    hole_top_labeled_3 - target
    hole_middle_labeled_4 - target
    hole_bottom_labeled_6 - target
  )
  (:init
    (in_init_container disc_triangle_blue)
    (in_init_container disc_quadrilateral_blue)
    (in_init_container disc_hexagon_blue)
    (free hole_top_labeled_3)
    (free hole_middle_labeled_4)
    (free hole_bottom_labeled_6)
  )
  (:goal
    (and
      ; container empty and each hole occupied
      (forall (?y - target) (not (free ?y)))
      (forall (?x - item) (not (in_init_container ?x)))
      ; matching rule: place each shape disc in the hole whose numeral equals the number of sides
      (in_target disc_triangle_blue hole_top_labeled_3)         ; triangle -> 3
      (in_target disc_quadrilateral_blue hole_middle_labeled_4) ; quadrilateral -> 4
      (in_target disc_hexagon_blue hole_bottom_labeled_6)       ; hexagon -> 6
    )
  )
)
; move_to_target disc_triangle_blue hole_top_labeled_3
; move_to_target disc_quadrilateral_blue hole_middle_labeled_4
; move_to_target disc_hexagon_blue hole_bottom_labeled_6

; Task goal: Move each blue shape disc from the left slots (init container) into the right holes so that each disc goes to the hole labeled with the matching number of sides (3, 4, 6).

; Verification summary:
; Total number of objects: 7
; Objects: left_slots_container, disc_triangle_blue, disc_quadrilateral_blue, disc_hexagon_blue, hole_top_labeled_3, hole_middle_labeled_4, hole_bottom_labeled_6
; Notes: all three discs and three target holes are clearly visible; the quadrilateral is a slanted 4‑sided polygon (parallelogram). No uncertainties or partially visible items.