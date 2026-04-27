(define (problem shape_sorting_problem)
  (:domain shoebox-simple)
  (:objects
    init_bowl - init_container
    circle_shape - item
    triangle_shape - item
    square_shape - item
    target_circle - target
    target_triangle - target
    target_square - target
  )
  (:init
    (in_init_container circle_shape)
    (in_init_container triangle_shape)
    (in_target square_shape target_square)
    (free target_circle)
    (free target_triangle)
  )
  (:goal  
    (and
      (in_target circle_shape target_circle)
      (in_target triangle_shape target_triangle)
      (in_target square_shape target_square)
    )
  )
)

; move_to_target circle_shape target_circle
; move_to_target triangle_shape target_triangle

; Verification summary:
; Total number of objects: 6
; Objects: circle_shape, triangle_shape, square_shape, target_circle, target_triangle, target_square
; No uncertainties or partially visible items.