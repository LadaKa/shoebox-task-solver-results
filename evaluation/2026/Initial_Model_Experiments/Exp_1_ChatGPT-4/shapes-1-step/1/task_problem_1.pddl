(define (problem matched_shapes_problem)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    circle_shape - item
    triangle_shape - item
    square_shape - item
    peg_circle - target
    peg_triangle - target
    peg_square - target
  )
  (:init
    (in_init_container circle_shape)
    (in_init_container triangle_shape)
    (in_init_container square_shape)
    (free peg_circle)
    (free peg_triangle)
    (free peg_square)
  )
  (:goal
    (and
      (in_target circle_shape peg_circle)
      (in_target triangle_shape peg_triangle)
      (in_target square_shape peg_square)
    )
  )
)
; move_to_target circle_shape peg_circle
; move_to_target triangle_shape peg_triangle
; move_to_target square_shape peg_square

; Verification summary:
; Total number of objects: 7
; Objects: circle_shape, triangle_shape, square_shape, peg_circle, peg_triangle, peg_square
; All objects were clearly visible
; The goal is to match each shape with its corresponding peg based on shape alignment.