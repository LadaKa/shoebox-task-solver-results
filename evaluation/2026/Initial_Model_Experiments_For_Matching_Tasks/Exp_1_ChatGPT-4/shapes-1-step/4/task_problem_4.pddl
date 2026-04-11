(define (problem shape_sorting_problem)
  (:domain shoebox-simple)
  (:objects
    init_container - init_container
    shape_circle - item
    shape_triangle - item
    shape_square - item
    target_circle - target
    target_triangle - target
    target_square - target
  )
  (:init
    (in_init_container shape_circle)
    (in_init_container shape_triangle)
    (in_init_container shape_square)
    (free target_circle)
    (free target_triangle)
    (free target_square)
  )
  (:goal
    (and
      (in_target shape_circle target_circle)
      (in_target shape_triangle target_triangle)
      (in_target shape_square target_square)
    )
  )
)

; move_to_target shape_circle target_circle
; move_to_target shape_triangle target_triangle
; move_to_target shape_square target_square

; Verification summary:
; Total number of objects: 6
; Objects: shape_circle, shape_triangle, shape_square, target_circle, target_triangle, target_square
; All items and targets are clearly visible and distinguishable by shape