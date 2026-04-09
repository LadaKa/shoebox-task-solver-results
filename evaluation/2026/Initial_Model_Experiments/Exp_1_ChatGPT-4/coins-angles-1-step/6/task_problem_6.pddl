(define (problem image_problem)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    triangle_blue - item
    pentagon_blue - item
    rhombus_blue - item
    target_3 - target
    target_triangle - target
    target_4 - target
    target_rhombus - target
    target_6 - target
    target_pentagon - target
  )
  (:init
    (in_init_container triangle_blue)
    (in_init_container pentagon_blue)
    (in_init_container rhombus_blue)
    (free target_3)
    (free target_triangle)
    (free target_4)
    (free target_rhombus)
    (free target_6)
    (free target_pentagon)
  )
  (:goal
    (and
      (in_target triangle_blue target_triangle)
      (in_target pentagon_blue target_pentagon)
      (in_target rhombus_blue target_rhombus)
      (not (in_init_container triangle_blue))
      (not (in_init_container pentagon_blue))
      (not (in_init_container rhombus_blue))
    )
  )
)

; move_to_target triangle_blue target_triangle
; move_to_target pentagon_blue target_pentagon
; move_to_target rhombus_blue target_rhombus

; Verification summary:
; Total number of objects: 8
; Objects: 3 items (triangle_blue, pentagon_blue, rhombus_blue), 5 targets (target_3, target_triangle, target_4, target_rhombus, target_6, target_pentagon)
; No uncertainties or partially visible items

; Task goal: Match items with corresponding shapes/targets
; Items include specific shapes: triangle, pentagon, rhombus
; Targets correspond to shapes and numbers