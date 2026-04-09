(define (problem shape_sorter)
  (:domain shoebox-simple)
  (:objects
    init_container - init_container
    ring_blue - item
    triangle_blue - item
    square_blue - item
    target_circle - target
    target_triangle - target
    target_square - target
  )
  (:init
    (in_init_container ring_blue)
    (in_init_container triangle_blue)
    (in_init_container square_blue)
    (free target_circle)
    (free target_triangle)
    (free target_square)
  )
  (:goal
    (and
      (in_target ring_blue target_circle)
      (in_target triangle_blue target_triangle)
      (in_target square_blue target_square)
    )
  )
)

; Action plan:
; move_to_target ring_blue target_circle
; move_to_target triangle_blue target_triangle
; move_to_target square_blue target_square

; Verification summary:
; Total number of objects: 6
; Objects: ring_blue, triangle_blue, square_blue, target_circle, target_triangle, target_square
; All objects are fully visible and clearly identifiable