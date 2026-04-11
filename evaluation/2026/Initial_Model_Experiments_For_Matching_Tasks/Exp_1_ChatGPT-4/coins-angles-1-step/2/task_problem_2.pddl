(define (problem image_task)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    triangle_token - item
    pentagon_token - item
    rhombus_token - item
    circle_3 - target
    circle_triangle - target
    circle_square - target
    circle_4 - target
    circle_6 - target
    circle_pentagon - target
  )
  (:init
    (in_init_container triangle_token)
    (in_init_container pentagon_token)
    (in_init_container rhombus_token)
    (free circle_3)
    (free circle_4)
    (free circle_6)
    (free circle_triangle)
    (free circle_square)
    (free circle_pentagon)
  )
  (:goal
    (and
      (in_target triangle_token circle_triangle)
      (in_target pentagon_token circle_pentagon)
      (in_target rhombus_token circle_square)
      (forall (?y - target)
        (not (free ?y))
      )
      (forall (?x - item)
        (not (in_init_container ?x))
      )
    )
  )
)
; Action plan:
; move_to_target triangle_token circle_triangle
; move_to_target pentagon_token circle_pentagon
; move_to_target rhombus_token circle_square

; Verification summary:
; Total number of objects: 9
; Objects: initial_container, triangle_token, pentagon_token, rhombus_token, circle_3, circle_triangle, circle_square, circle_4, circle_6, circle_pentagon
; No uncertainties or partially visible items

; Task Goal:
; Move each token to its designated circular target based on the matching shape or number.