(define (problem problem_from_image_color_match)
  (:domain shoebox-simple)
  (:objects
    left_slot_area_init_container - init_container
    disc_red - item
    disc_yellow - item
    disc_blue - item
    hole_top_left_with_red_square - target
    hole_top_center_with_yellow_square - target
    hole_top_right_with_blue_square - target
  )
  (:init
    (in_init_container disc_red)
    (in_init_container disc_yellow)
    (in_init_container disc_blue)
    (free hole_top_left_with_red_square)
    (free hole_top_center_with_yellow_square)
    (free hole_top_right_with_blue_square)
  )
  (:goal
    (and
      ; color-matching placement (explicit assignments)
      (in_target disc_red hole_top_left_with_red_square)
      (in_target disc_yellow hole_top_center_with_yellow_square)
      (in_target disc_blue hole_top_right_with_blue_square)
      ; container empty and targets non-empty (explicit, STRIPS-safe)
      (not (in_init_container disc_red))
      (not (in_init_container disc_yellow))
      (not (in_init_container disc_blue))
      (not (free hole_top_left_with_red_square))
      (not (free hole_top_center_with_yellow_square))
      (not (free hole_top_right_with_blue_square))
    )
  )
)
; Action plan (one object per target, moved from the init container):
; move_to_target disc_red hole_top_left_with_red_square
; move_to_target disc_yellow hole_top_center_with_yellow_square
; move_to_target disc_blue hole_top_right_with_blue_square

; Task goal: Place each colored wooden disc into the top-row circular hole that has the matching color square above it (red-left, yellow-center, blue-right). Each target holds exactly one disc, and the init container becomes empty.

; Object identification:
; - Items (movable): disc_red, disc_yellow, disc_blue (three colored wooden discs visible on the left).
; - Targets (fixed): three top-row circular holes on the right, each labeled by a colored square above it (red, yellow, blue).
; - Init container (fixed): left_slot_area_init_container (the left slotted area holding the discs).

; Verification summary:
; - Total number of objects: 7
; - Objects: left_slot_area_init_container; disc_red, disc_yellow, disc_blue; hole_top_left_with_red_square, hole_top_center_with_yellow_square, hole_top_right_with_blue_square
; - Notes: Discs are partially inserted in slots but clearly visible; no uncertain objects.