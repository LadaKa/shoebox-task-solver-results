(define (problem shoebox-task)
  (:domain shoebox-simple)
  (:objects
    init_container - init_container
    ring_blue - item
    triangle_blue - item
    square_blue - item
    peg_circle - target
    peg_triangle - target
    peg_square - target
  )
  (:init
    (in_init_container ring_blue)
    (in_init_container triangle_blue)
    (in_init_container square_blue)
    (free peg_circle)
    (free peg_triangle)
    (free peg_square)
  )
  (:goal
    (and
      (in_target ring_blue peg_circle)
      (in_target triangle_blue peg_triangle)
      (in_target square_blue peg_square)
    )
  )
)

; move_to_target ring_blue peg_circle
; move_to_target triangle_blue peg_triangle
; move_to_target square_blue peg_square

; Verification summary:
; Total number of objects: 6
; Objects: 1 blue ring, 1 blue triangle, 1 blue square, and 3 pegs
; All objects are fully visible
; The task is to place each shape onto the corresponding peg based on shape matching