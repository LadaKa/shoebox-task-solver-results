(define (problem shape_sorting_problem)
  (:domain shoebox-simple)
  (:objects
    init_container - init_container
    circle_item - item
    triangle_item - item
    square_item - item
    circle_target - target
    triangle_target - target
    square_target - target
  )
  (:init
    (in_init_container circle_item)
    (in_init_container triangle_item)
    (in_init_container square_item)
    (free circle_target)
    (free triangle_target)
    (free square_target)
  )
  (:goal
    (and
      (in_target circle_item circle_target)
      (in_target triangle_item triangle_target)
      (in_target square_item square_target)
    )
  )
)
; move_to_target circle_item circle_target
; move_to_target triangle_item triangle_target
; move_to_target square_item square_target

; Verification summary:
; Total number of objects: 6
; Objects: circle_item, triangle_item, square_item, circle_target, triangle_target, square_target
; All objects are clearly visible with no uncertainties or partial visibility

; Goal: Place each shape (circle, triangle, square) into its corresponding slot based on shape matching.