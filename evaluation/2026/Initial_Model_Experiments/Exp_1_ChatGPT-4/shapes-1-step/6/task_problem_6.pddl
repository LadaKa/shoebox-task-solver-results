(define (problem problem_example)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    ring_blue - item
    triangle_blue - item
    square_blue - item
    pole_circle - target
    pole_triangle - target
    pole_square - target
  )
  (:init
    (in_init_container ring_blue)
    (in_init_container triangle_blue)
    (in_init_container square_blue)
    (free pole_circle)
    (free pole_triangle)
    (free pole_square)
  )
  (:goal
    (and
      (in_target ring_blue pole_circle)
      (in_target triangle_blue pole_triangle)
      (in_target square_blue pole_square)
    )
  )
)

; move_to_target ring_blue pole_circle
; move_to_target triangle_blue pole_triangle
; move_to_target square_blue pole_square

; Verification summary:
; Total number of objects: 6
; Objects: ring_blue, triangle_blue, square_blue, pole_circle, pole_triangle, pole_square
; No uncertainties or partially visible items
