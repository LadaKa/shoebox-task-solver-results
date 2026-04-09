(define (problem shoebox-image-problem)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    circle_item - item
    triangle_item - item
    square_item - item
    target_circle - target
    target_triangle - target
    target_square - target
  )
  (:init
    (in_init_container circle_item)
    (in_init_container triangle_item)
    (in_init_container square_item)
    (free target_circle)
    (free target_triangle)
    (free target_square)
  )
  (:goal
    (and
      (in_target circle_item target_circle)
      (in_target triangle_item target_triangle)
      (in_target square_item target_square)
    )
  )
)

; move_to_target circle_item target_circle
; move_to_target triangle_item target_triangle
; move_to_target square_item target_square

; Verification summary:
; Total number of objects: 6
; Objects: circle_item, triangle_item, square_item, target_circle, target_triangle, target_square
; All items and targets are clearly visible
; Task goal: Match each item to its corresponding target based on shape