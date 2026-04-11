(define (problem shape_match_left_column)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    disc_blue_circle - item
    disc_blue_triangle - item
    disc_blue_diamond - item
    slot_circle_left_top - target
    slot_triangle_left_middle - target
    slot_square_left_bottom - target
  )
  (:init
    (in_init_container disc_blue_circle)
    (in_init_container disc_blue_triangle)
    (in_init_container disc_blue_diamond)
    (free slot_circle_left_top)
    (free slot_triangle_left_middle)
    (free slot_square_left_bottom)
  )
  (:goal
    (and
      ; shape-based matching: circle→circle, triangle→triangle, diamond(=rotated square)→square
      (in_target disc_blue_circle slot_circle_left_top)
      (in_target disc_blue_triangle slot_triangle_left_middle)
      (in_target disc_blue_diamond slot_square_left_bottom)
      ; init container must be empty and every target occupied
      (not (in_init_container disc_blue_circle))
      (not (in_init_container disc_blue_triangle))
      (not (in_init_container disc_blue_diamond))
      (not (free slot_circle_left_top))
      (not (free slot_triangle_left_middle))
      (not (free slot_square_left_bottom))
    )
  )
)
; Plan (one item per matching target, any order is valid):
; move_to_target disc_blue_circle slot_circle_left_top
; move_to_target disc_blue_triangle slot_triangle_left_middle
; move_to_target disc_blue_diamond slot_square_left_bottom

; Task goal: Place each wooden round disc into the left-column slot with the matching blue outline shape.
; Matching rule used in goal: by shape category — circle→circle, triangle→triangle, diamond (square rotated)→square.

; Verification summary:
; Total number of objects: 6
; Items: disc_blue_circle, disc_blue_triangle, disc_blue_diamond
; Targets: slot_circle_left_top, slot_triangle_left_middle, slot_square_left_bottom
; All listed items and targets are clearly visible. Other blue outline pieces and the right-column duplicates are visible but not modeled as targets for this minimal task instance. No uncertainties or partial occlusions for the modeled objects.