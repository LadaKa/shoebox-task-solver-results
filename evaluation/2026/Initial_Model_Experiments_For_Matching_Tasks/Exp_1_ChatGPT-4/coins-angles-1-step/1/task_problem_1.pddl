(define (problem shoebox-problem)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    triangle_item - item
    pentagon_item - item
    parallelogram_item - item
    bowl_triangle - target
    bowl_square - target
    bowl_pentagon - target
  )
  (:init
    (in_init_container triangle_item)
    (in_init_container pentagon_item)
    (in_init_container parallelogram_item)
    (free bowl_triangle)
    (free bowl_square)
    (free bowl_pentagon)
  )
  (:goal
    (and
      (in_target triangle_item bowl_triangle)
      (in_target pentagon_item bowl_pentagon)
      (in_target parallelogram_item bowl_square)
    )
  )
)

; Action plan:
; move_to_target triangle_item bowl_triangle
; move_to_target pentagon_item bowl_pentagon
; move_to_target parallelogram_item bowl_square

; Verification summary:
; Total number of objects: 6
; Objects: triangle_item, pentagon_item, parallelogram_item, bowl_triangle, bowl_square, bowl_pentagon
; No uncertainties or partially visible items