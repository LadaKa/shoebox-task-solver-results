(define (problem shape_matching_problem)
  (:domain shoebox-simple)
  (:objects
    init_container - init_container
    triangle_item - item
    pentagon_item - item
    rhombus_item - item
    target_3 - target
    target_4 - target
    target_6 - target
  )
  (:init
    (in_init_container triangle_item)
    (in_init_container pentagon_item)
    (in_init_container rhombus_item)
    (free target_3)
    (free target_4)
    (free target_6)
  )
  (:goal
    (and
      (in_target triangle_item target_3)
      (in_target rhombus_item target_4)
      (in_target pentagon_item target_6)
    )
  )
)

; move_to_target triangle_item target_3
; move_to_target rhombus_item target_4
; move_to_target pentagon_item target_6

; Verification summary:
; Total number of objects: 6
; Object names: triangle_item, pentagon_item, rhombus_item, target_3, target_4, target_6
; No uncertainties or partially visible items

; Task goal: Move each shaped item from the init_container to its corresponding target based on matching shapes and positions.