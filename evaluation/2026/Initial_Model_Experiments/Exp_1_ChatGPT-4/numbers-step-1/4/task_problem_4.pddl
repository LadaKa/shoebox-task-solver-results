(define (problem problem_image)
  (:domain shoebox-simple)
  (:objects
    initial_container - init_container
    circle_1 - item
    circle_2 - item
    circle_3 - item
    box_1 - target
    box_2 - target
    box_3 - target
  )
  (:init
    (in_init_container circle_1)
    (in_init_container circle_2)
    (in_init_container circle_3)
    (free box_1)
    (free box_2)
    (free box_3)
  )
  (:goal
    (and
      (in_target circle_1 box_1)
      (in_target circle_2 box_2)
      (in_target circle_3 box_3)
    )
  )
)

; move_to_target circle_1 box_1
; move_to_target circle_2 box_2
; move_to_target circle_3 box_3

; Verification summary:
; Total number of objects: 6
; Objects: 3 circles (circle_1, circle_2, circle_3), 3 boxes (box_1, box_2, box_3)
; All items and targets clearly visible with matching numbers.