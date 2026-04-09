(define (problem shoebox_task)
  (:domain shoebox-simple)
  (:objects
    init_container - init_container
    triangle_item - item
    pentagon_item - item
    rhombus_item - item
    target_3 - target
    target_triangle - target
    target_pentagon - target
  )
  (:init
    (in_init_container triangle_item)
    (in_init_container pentagon_item)
    (in_init_container rhombus_item)
    (free target_3)
    (free target_triangle)
    (free target_pentagon)
  )
  (:goal
    (and
      (in_target triangle_item target_triangle)
      (in_target pentagon_item target_pentagon)
      (in_target rhombus_item target_3)
      (forall (?y - target) (not (free ?y)))
      (forall (?x - item) (not (in_init_container ?x)))
    )
  )
)
; move_to_target rhombus_item target_3
; move_to_target triangle_item target_triangle
; move_to_target pentagon_item target_pentagon

; Verification summary:
; Total number of objects: 6
; Objects: 3 items (triangle_item, pentagon_item, rhombus_item), 3 targets (target_3, target_triangle, target_pentagon)
; All objects are fully visible and clearly identifiable