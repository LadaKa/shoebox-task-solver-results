(define (problem shoebox_example)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    triangle_blue - item
    pentagon_blue - item
    rhombus_blue - item
    target_triangle_3 - target
    target_square_4 - target
    target_pentagon_6 - target
  )
  (:init
    (in_init_container triangle_blue)
    (in_init_container pentagon_blue)
    (in_init_container rhombus_blue)
    (free target_triangle_3)
    (free target_square_4)
    (free target_pentagon_6)
  )
  (:goal
    (and
      (in_target triangle_blue target_triangle_3)
      (in_target pentagon_blue target_pentagon_6)
      (in_target rhombus_blue target_square_4)
      (forall (?y - target)
        (not (free ?y))
      )
      (forall (?x - item)
        (not (in_init_container ?x))
      )
    )
  )
)
; move_to_target triangle_blue target_triangle_3
; move_to_target pentagon_blue target_pentagon_6
; move_to_target rhombus_blue target_square_4

; Verification summary:
; Total number of objects: 6
; Objects: triangle_blue, pentagon_blue, rhombus_blue, target_triangle_3, target_square_4, target_pentagon_6
; All items are clearly visible and their properties uniquely determine their targets