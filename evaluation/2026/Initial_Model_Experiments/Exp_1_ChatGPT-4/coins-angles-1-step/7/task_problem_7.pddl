(define (problem problem_image_example)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    triangle_item - item
    pentagon_item - item
    rhombus_item - item
    target_triangle - target
    target_square - target
    target_pentagon - target
  )
  (:init
    (in_init_container triangle_item)
    (in_init_container pentagon_item)
    (in_init_container rhombus_item)
    (free target_triangle)
    (free target_square)
    (free target_pentagon)
  )
  (:goal
    (and
      (in_target triangle_item target_triangle)
      (in_target pentagon_item target_pentagon)
      (exists (?x - item) 
        (and (in_target ?x target_square)
             (not (in_init_container ?x))))
    )
  )
)

; move_to_target triangle_item target_triangle
; move_to_target pentagon_item target_pentagon
; move_to_target rhombus_item target_square

; Verification summary:
; Total number of objects: 6
; Objects: triangle_item, pentagon_item, rhombus_item, target_triangle, target_square, target_pentagon
; All objects were clearly visible and identified.