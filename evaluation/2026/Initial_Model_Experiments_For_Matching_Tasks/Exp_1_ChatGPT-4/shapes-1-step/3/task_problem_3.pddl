(define (problem shoebox_image_task)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    ring - item
    triangle - item
    diamond - item
    target_circle - target
    target_triangle - target
    target_square - target
  )
  (:init
    (in_init_container ring)
    (in_init_container triangle)
    (in_init_container diamond)
    (free target_circle)
    (free target_triangle)
    (free target_square)
  )
  (:goal
    (and
      (in_target ring target_circle)
      (in_target triangle target_triangle)
      (in_target diamond target_square)
    )
  )
)

; move_to_target ring target_circle
; move_to_target triangle target_triangle
; move_to_target diamond target_square

; Verification summary:
; Total number of objects: 6
; Objects: 3 items (ring, triangle, diamond), 3 targets (target_circle, target_triangle, target_square)
; No uncertainties or partially visible items

; Task goal: Place each item in its corresponding target based on shape.